---
name: api-testing
description: "API endpoint testing, mocking, and integration testing for robust API development."
---

# API Testing

Comprehensive API testing strategies including endpoint testing, mocking, and integration testing.

## Tier 1: Guided API Testing (Session 15+)

### What This Skill Does

Guides you through testing APIs systematically to ensure reliability, correctness, and performance.

### When to Use This Skill

- **Endpoint Testing**: Verifying API responses
- **Integration Testing**: Testing API integration with services
- **Mock Testing**: Testing with mock responses
- **Contract Testing**: Ensuring API contracts are met
- **Performance Testing**: Testing API performance

### Guided API Testing Workflow

#### Step 1: Understand the API

**API Documentation:**
- Read API documentation (OpenAPI/Swagger)
- Understand endpoints, methods, parameters
- Review authentication/authorization requirements
- Check rate limits and quotas
- Note expected status codes and error responses

**Key Information to Gather:**
```
✓ Base URL
✓ Available endpoints
✓ HTTP methods (GET, POST, PUT, DELETE, etc.)
✓ Request/response formats (JSON, XML)
✓ Authentication mechanism (API key, OAuth, JWT)
✓ Error responses and status codes
✓ Rate limits
```

#### Step 2: Design Test Cases

**Test Case Categories:**
- **Happy Path**: Successful requests with valid data
- **Negative Cases**: Invalid data, missing fields, wrong types
- **Edge Cases**: Boundary values, empty arrays, special characters
- **Error Handling**: Invalid credentials, not found, server errors
- **Security Cases**: SQL injection, XSS, unauthorized access

**Test Case Template:**
```
Test: [Test name]
Endpoint: [HTTP method and URL]
Input: [Request body/parameters]
Expected Status: [HTTP status code]
Expected Response: [Expected response structure and data]
Actual Status: [Actual status code]
Actual Response: [Actual response data]
Pass/Fail: [Result]
```

#### Step 3: Setup Testing Environment

**Environment Setup:**
1. Set up test API (or use staging environment)
2. Configure authentication (API keys, tokens)
3. Install testing tools/frameworks
4. Set up test data
5. Configure test database/fixtures

**Testing Tools:**
```bash
# Python
pip install requests pytest pytest-cov

# JavaScript
npm install --save-dev jest supertest

# API testing tools
pip install httpie
brew install curl  # macOS
```

#### Step 4: Write API Tests

**Basic API Test Example (Python):**
```python
import requests
import pytest

BASE_URL = "https://api.example.com"
API_KEY = "your_api_key"

def test_get_user_success():
    """Test successful user retrieval"""
    headers = {"Authorization": f"Bearer {API_KEY}"}
    response = requests.get(f"{BASE_URL}/users/1", headers=headers)

    assert response.status_code == 200
    data = response.json()
    assert "id" in data
    assert data["id"] == 1
    assert "name" in data
    assert isinstance(data["name"], str)

def test_get_user_not_found():
    """Test user not found"""
    headers = {"Authorization": f"Bearer {API_KEY}"}
    response = requests.get(f"{BASE_URL}/users/999", headers=headers)

    assert response.status_code == 404
    data = response.json()
    assert "error" in data
```

**API Test Example (JavaScript):**
```javascript
const request = require('supertest');
const app = require('./app');

describe('User API', () => {
  it('should get user', async () => {
    const response = await request(app)
      .get('/api/users/1')
      .set('Authorization', 'Bearer your_api_key')
      .expect(200);

    expect(response.body).toHaveProperty('id', 1);
    expect(response.body).toHaveProperty('name');
  });

  it('should return 404 for non-existent user', async () => {
    const response = await request(app)
      .get('/api/users/999')
      .set('Authorization', 'Bearer your_api_key')
      .expect(404);

    expect(response.body).toHaveProperty('error');
  });
});
```

#### Step 5: Run Tests and Analyze Results

**Running Tests:**
```bash
# Python
pytest tests/test_api.py -v
pytest tests/test_api.py --cov=src

# JavaScript
npm test
npm test -- --coverage
```

**Analyzing Results:**
- Check all tests pass
- Review test coverage
- Identify failing tests and reasons
- Analyze response times for performance

#### Step 6: Mock External Services

**Mocking Strategy:**
- Mock external dependencies
- Simulate various response scenarios
- Test error handling
- Speed up tests (no network calls)

**Mocking Example (Python):**
```python
import responses
import requests

@responses.activate
def test_get_user_with_mock():
    """Test with mocked response"""
    responses.add(
        responses.GET,
        "https://api.example.com/users/1",
        json={"id": 1, "name": "Test User"},
        status=200
    )

    response = requests.get("https://api.example.com/users/1")

    assert response.status_code == 200
    assert response.json()["name"] == "Test User"

@responses.activate
def test_get_user_with_mock_error():
    """Test error handling with mock"""
    responses.add(
        responses.GET,
        "https://api.example.com/users/1",
        json={"error": "Not found"},
        status=404
    )

    response = requests.get("https://api.example.com/users/1")

    assert response.status_code == 404
```

### Common API Testing Patterns

#### Pattern 1: Pyramid Testing

**Test Pyramid:**
```
        /\
       /  \
      /E2E \  (End-to-end, UI, few tests)
     /------\
    /Integration\  (API, service integration, more tests)
   /------------\
  /   Unit Tests  \  (Individual functions, most tests)
 /----------------\
```

**Principle:**
- Many unit tests (fast, isolated)
- Medium integration tests (API, slower)
- Few end-to-end tests (slowest, brittle)

#### Pattern 2: Contract Testing

**Provider-Consumer Contracts:**
```
1. Define API contract (OpenAPI/Swagger)
2. Write contract tests for provider
3. Write consumer tests against contract
4. Ensure compatibility
```

**Contract Testing Example:**
```python
from pact import Consumer, Provider
import pytest

pact = Consumer('Consumer').has_pact_with(Provider('Provider'))

def test_get_user_contract():
    expected = {
        "id": 1,
        "name": "Test User",
        "email": "test@example.com"
    }

    (pact
     .given('User 1 exists')
     .upon_receiving('a request for user 1')
     .with_request('method', 'GET')
     .with_request('path', '/users/1')
     .will_respond_with(200, body=expected))

    with pact:
        # Test against contract
        response = client.get_user(1)
        assert response == expected
```

### Integration with Other Skills

**Works With:**
- **debugging**: Debugging failing API tests
- **code-review**: Reviewing API test coverage
- **quick-research**: Researching API testing best practices
- **workflow-orchestrator**: Automating API test runs

---

## Tier 2: Confident API Testing (Session 16+)

### Advanced API Testing Techniques

#### 1. Load Testing

**Load Testing Tools:**
- **Locust** (Python): User-based load testing
- **JMeter** (Java): Comprehensive load testing
- **k6** (Go): Modern load testing with JavaScript
- **Artillery** (Node.js): Simple load testing

**Locust Example:**
```python
from locust import HttpUser, task, between

class APIUser(HttpUser):
    wait_time = between(1, 3)

    @task
    def get_user(self):
        self.client.get("/users/1")

    @task(3)
    def list_users(self):
        self.client.get("/users")
```

**Run Locust:**
```bash
locust -f locustfile.py --host=https://api.example.com
# Opens web UI at http://localhost:8089
```

#### 2. Security Testing

**Security Test Categories:**
- Authentication bypass
- Authorization testing
- SQL injection
- XSS attacks
- Rate limiting
- Input validation
- Data exposure

**Security Testing Tools:**
```bash
# OWASP ZAP
brew install zaproxy

# SQLMap
pip install sqlmap

# Burp Suite (commercial)
# Download from https://portswigger.net/burp
```

**Security Testing Example:**
```python
def test_sql_injection():
    """Test SQL injection vulnerability"""
    malicious_input = "' OR '1'='1"

    response = requests.post(
        f"{BASE_URL}/login",
        json={"username": malicious_input, "password": "test"}
    )

    # Should not allow SQL injection
    assert response.status_code in [400, 401, 403]
    assert "token" not in response.json()
```

#### 3. API Versioning Testing

**Versioning Strategies:**
- URL versioning: `/api/v1/users`
- Header versioning: `Accept: application/vnd.api.v1+json`
- Query parameter: `/api/users?version=1`

**Versioning Tests:**
```python
def test_api_v1():
    """Test v1 API"""
    response = requests.get(
        f"{BASE_URL}/v1/users/1",
        headers={"Accept": "application/vnd.api.v1+json"}
    )
    assert response.status_code == 200

def test_api_v2():
    """Test v2 API"""
    response = requests.get(
        f"{BASE_URL}/v2/users/1",
        headers={"Accept": "application/vnd.api.v2+json"}
    )
    assert response.status_code == 200
    # Verify v2 specific features
```

#### 4. API Documentation Testing

**OpenAPI/Swagger Validation:**
```bash
# Validate OpenAPI spec
npm install -g @apidevtools/swagger-cli
swagger-cli validate openapi.json

# Generate documentation from spec
npm install -g @redocly/cli
redocly build-docs openapi.json
```

**Documentation-Driven Testing:**
```python
import prance

def test_openapi_spec():
    """Validate OpenAPI specification"""
    parser = prance.ResolvingParser('openapi.json')
    parser.parse()
    assert parser.specification is not None

def test_api_matches_spec():
    """Test API matches OpenAPI spec"""
    spec = load_openapi_spec()

    # Test each endpoint in spec
    for endpoint in spec['paths']:
        for method in spec['paths'][endpoint]:
            # Call endpoint
            response = make_request(method, endpoint)
            # Validate response against spec
            validate_response(response, spec['paths'][endpoint][method])
```

#### 5. API Monitoring and Testing in Production

**Production Monitoring:**
- Synthetic monitoring (uptime checks)
- API health checks
- Response time monitoring
- Error rate tracking
- SLA monitoring

**Monitoring Tools:**
```python
# Synthetic monitoring example
import requests
import time

def monitor_api_health():
    """Monitor API health continuously"""
    while True:
        start = time.time()
        response = requests.get(f"{BASE_URL}/health")
        duration = time.time() - start

        metrics = {
            "status": response.status_code,
            "response_time": duration,
            "timestamp": time.time()
        }

        send_to_monitoring(metrics)

        if response.status_code != 200 or duration > 1.0:
            send_alert("API health issue detected")

        time.sleep(60)  # Check every minute
```

### Advanced Testing Patterns

#### Pattern 1: Test Data Management

**Test Data Strategies:**
- **Factory Pattern**: Create test data with factories
- **Fixtures**: Pre-defined test data sets
- **Database Transactions**: Roll back after tests
- **Mock Data**: Generate random test data

**Factory Example (Python):**
```python
import factory

class UserFactory(factory.Factory):
    class Meta:
        model = User

    id = factory.Sequence(lambda n: n)
    name = factory.Faker('name')
    email = factory.Faker('email')

def test_create_user():
    user = UserFactory.create()
    assert user.id is not None
    assert user.email is not None
```

#### Pattern 2: API Testing CI/CD Integration

**CI/CD Pipeline:**
```
1. Code push
2. Run unit tests
3. Run API tests
4. Run integration tests
4. Run load tests
5. Security scan
6. Deploy to staging
7. Run tests against staging
8. Deploy to production
9. Monitor production
```

**GitHub Actions Example:**
```yaml
name: API Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Set up Python
        uses: actions/setup-python@v2
        with:
          python-version: '3.9'
      - name: Install dependencies
        run: |
          pip install -r requirements.txt
          pip install pytest pytest-cov
      - name: Run API tests
        run: |
          pytest tests/test_api.py -v --cov=src
      - name: Upload coverage
        uses: codecov/codecov-action@v1
```

### Best Practices

#### 1. Test Organization

**Test Structure:**
```
tests/
├── unit/
│   ├── test_user_model.py
│   └── test_auth.py
├── integration/
│   ├── test_api_users.py
│   └── test_api_products.py
├── fixtures/
│   ├── users.json
│   └── products.json
└── conftest.py  # Shared fixtures
```

#### 2. Test Isolation

**Isolation Techniques:**
- Use test databases (separate from production)
- Reset database state between tests
- Use transactions and rollback
- Mock external services
- Clean up test data after tests

#### 3. Test Readability

**Readable Tests:**
```python
# Good - clear and descriptive
def test_get_user_returns_404_when_user_does_not_exist():
    response = api_client.get_user(user_id=999)
    assert response.status_code == 404
    assert response.json()["error"] == "User not found"

# Avoid - unclear
def test_user():
    r = g(999)
    assert r.s == 404
```

---

## Tier 3: Anticipatory API Testing (Session 17+)

### Proactive API Testing Strategies

#### 1. Automated API Test Generation

**Generate Tests from OpenAPI:**
```python
import openapi_spec_validator
import pytest

def generate_tests_from_spec():
    """Generate test cases from OpenAPI spec"""
    spec = load_openapi_spec('openapi.json')

    test_cases = []

    for path, methods in spec['paths'].items():
        for method, details in methods.items():
            # Generate test case for each endpoint
            test_case = {
                'name': f"test_{method}_{path}",
                'endpoint': path,
                'method': method,
                'parameters': details.get('parameters', []),
                'responses': details.get('responses', {})
            }
            test_cases.append(test_case)

    return test_cases

@pytest.mark.parametrize("test_case", generate_tests_from_spec())
def test_endpoint(test_case):
    """Dynamically generated endpoint tests"""
    response = make_request(test_case['method'], test_case['endpoint'])
    assert response.status_code in [200, 201, 204]
```

#### 2. API Quality Metrics

**Quality Metrics:**
- Response time (p50, p95, p99)
- Error rate (4xx, 5xx)
- Test coverage (endpoints, methods)
- API stability (uptime, consistency)
- Documentation completeness

**Dashboard Example:**
```python
def generate_api_quality_dashboard():
    """Generate API quality metrics dashboard"""
    metrics = {
        "response_time": calculate_response_time_percentiles(),
        "error_rate": calculate_error_rate(),
        "test_coverage": calculate_test_coverage(),
        "uptime": calculate_uptime(),
        "documentation_coverage": calculate_doc_coverage()
    }

    # Generate dashboard
    create_dashboard(metrics)
```

#### 3. AI-Powered Test Generation

**AI Test Generation:**
```
1. Analyze API spec and documentation
2. Generate test cases automatically
3. Identify edge cases and boundary conditions
4. Suggest test improvements
5. Predict likely failures
```

### Expert Testing Techniques

#### 1. Contract-Driven Development

**CDD Workflow:**
```
1. Define API contract (OpenAPI)
2. Generate tests from contract
3. Implement API to pass tests
4. Contract tests ensure API matches contract
5. Consumer tests ensure compatibility
```

#### 2. Chaos Engineering for APIs

**Chaos Testing:**
```python
import random

def test_api_resilience():
    """Test API resilience under failure conditions"""

    # Simulate network latency
    def add_latency():
        time.sleep(random.uniform(0.1, 2.0))

    # Simulate network errors
    def simulate_network_error():
        if random.random() < 0.1:
            raise ConnectionError()

    # Simulate server errors
    def simulate_server_error():
        if random.random() < 0.05:
            raise ServerError()

    # Test API handles failures gracefully
    try:
        response = make_api_call()
        assert response.status_code in [200, 502, 503, 504]
    except (ConnectionError, ServerError):
        # API should handle these gracefully
        assert api_has_circuit_breaker()
        assert api_has_retry_logic()
```

#### 3. API Testing Knowledge Base

**Build Knowledge Graph:**
```
1. Document all API tests and results
2. Link tests to endpoints, methods, parameters
3. Track test failures and patterns
4. Enable semantic search for test patterns
5. Learn from testing history
```

### Best Practices Summary

**Do:**
- Test API contracts and specifications
- Use automated test generation
- Monitor API quality metrics
- Test failure scenarios
- Mock external dependencies
- Test security vulnerabilities
- Monitor production APIs
- Document test patterns

**Don't:**
- Test only happy paths
- Skip negative and edge cases
- Test without proper authentication
- Ignore test isolation
- Skip performance testing
- Test production with uncontrolled load
- Ignore monitoring and alerts
- Skip documentation

---

## Examples and Use Cases

### Example 1: Testing a REST API

```python
import pytest
import requests

BASE_URL = "https://jsonplaceholder.typicode.com"

class TestUserAPI:
    def test_get_users(self):
        """Test getting all users"""
        response = requests.get(f"{BASE_URL}/users")
        assert response.status_code == 200
        users = response.json()
        assert isinstance(users, list)
        assert len(users) > 0

    def test_get_user(self):
        """Test getting a specific user"""
        response = requests.get(f"{BASE_URL}/users/1")
        assert response.status_code == 200
        user = response.json()
        assert user["id"] == 1
        assert "name" in user

    def test_create_user(self):
        """Test creating a new user"""
        new_user = {
            "name": "Test User",
            "email": "test@example.com"
        }
        response = requests.post(
            f"{BASE_URL}/users",
            json=new_user
        )
        assert response.status_code == 201
        user = response.json()
        assert user["name"] == "Test User"

    def test_update_user(self):
        """Test updating a user"""
        updated_user = {
            "name": "Updated User"
        }
        response = requests.put(
            f"{BASE_URL}/users/1",
            json=updated_user
        )
        assert response.status_code == 200
        user = response.json()
        assert user["name"] == "Updated User"

    def test_delete_user(self):
        """Test deleting a user"""
        response = requests.delete(f"{BASE_URL}/users/1")
        assert response.status_code in [200, 204]
```

### Example 2: Mocking External APIs

```python
import responses
import pytest
import requests

@responses.activate
def test_api_with_mock():
    """Test API with mocked external service"""
    # Mock external API response
    responses.add(
        responses.GET,
        "https://external.api.com/users/1",
        json={"id": 1, "name": "Mocked User"},
        status=200
    )

    # Call your API which calls external API
    response = your_api.get_user(1)

    assert response["name"] == "Mocked User"
    assert len(responses.calls) == 1  # Verify external API was called

@responses.activate
def test_api_with_mock_error():
    """Test API error handling with mock"""
    responses.add(
        responses.GET,
        "https://external.api.com/users/1",
        json={"error": "Service unavailable"},
        status=503
    )

    # Your API should handle the error gracefully
    with pytest.raises(ServiceUnavailableError):
        your_api.get_user(1)
```

### Example 3: Load Testing an API

```python
from locust import HttpUser, task, between, events
import time

class APIUser(HttpUser):
    wait_time = between(1, 3)

    @task
    def list_users(self):
        self.client.get("/api/users")

    @task(2)
    def get_user(self):
        user_id = random.randint(1, 100)
        self.client.get(f"/api/users/{user_id}")

    @task
    def create_user(self):
        user_data = {
            "name": "Test User",
            "email": f"test{random.randint(1, 1000)}@example.com"
        }
        self.client.post("/api/users", json=user_data)

@events.test_stop.add_listener
def on_test_stop(environment, **kwargs):
    """Generate report after test"""
    print(f"Total requests: {environment.stats.total.num_requests}")
    print(f"Failures: {environment.stats.total.fail_ratio}")
    print(f"Response time (p50): {environment.stats.total.get_response_time_percentile(0.5)}ms")
    print(f"Response time (p95): {environment.stats.total.get_response_time_percentile(0.95)}ms")
```

---

## Common Mistakes

### Mistake 1: Testing Only Happy Paths
**Problem:** Missing error cases and edge conditions
**Fix:** Test negative cases, errors, and boundary conditions

### Mistake 2: Not Mocking External Services
**Problem:** Tests are slow and unreliable
**Fix:** Mock external dependencies for reliability and speed

### Mistake 3: Hardcoding Test Data
**Problem:** Tests become brittle and hard to maintain
**Fix:** Use factories, fixtures, and data generators

### Mistake 4: Not Cleaning Up Test Data
**Problem:** Tests interfere with each other
**Fix:** Use transactions, rollback, and cleanup

### Mistake 5: Skipping Performance Testing
**Problem:** Performance issues discovered in production
**Fix:** Include load and performance tests in CI/CD

### Mistake 6: Testing Without Authentication
**Problem:** Tests bypass security checks
**Fix:** Test with proper authentication and authorization

---

## Troubleshooting

### Q: My API tests are flaky and fail intermittently. How do I fix this?
A: Flaky tests often have timing issues or shared state. Use mocking, fix race conditions, ensure proper cleanup, and avoid time-based assertions.

### Q: How do I test APIs that require authentication?
A: Use test credentials, generate auth tokens in test setup, or mock authentication entirely for unit tests.

### Q: Should I test APIs against production?
A: Use synthetic monitoring for production, but load tests should run against staging to avoid impacting production.

### Q: How do I handle API changes in tests?
A: Version your APIs, use contract testing, and update tests when API changes. Document breaking changes.

### Q: How much API test coverage is enough?
A: Aim for 100% endpoint coverage with key scenarios tested. Focus on critical paths and error handling.

---

## Related Skills

- **debugging**: Debugging failing API tests
- **code-review**: Reviewing API test coverage
- **quick-research**: Researching API testing best practices
- **workflow-orchestrator**: Automating API test runs