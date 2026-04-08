---
name: code-refactoring
description: "Code quality improvement, technical debt reduction, and refactoring patterns for maintainable software."
---

# Code Refactoring

Systematic approaches to improving code quality, reducing technical debt, and maintaining software maintainability.

## Tier 1: Guided Refactoring (Session 15+)

### What This Skill Does

Guides you through code refactoring to improve code quality, readability, and maintainability without changing functionality.

### When to Use This Skill

- **Code Review**: Improving code before merging
- **Technical Debt**: Reducing accumulated complexity
- **Maintenance**: Making code easier to understand and modify
- **Performance**: Optimizing code execution
- **Readability**: Improving code clarity and documentation

### Guided Refactoring Workflow

#### Step 1: Identify Refactoring Candidates

**Code Smells to Look For:**
- Long methods/functions (over 20 lines)
- Large classes (too many responsibilities)
- Duplicate code (DRY violations)
- Complex conditional logic (nested ifs)
- Magic numbers (unnamed constants)
- Inconsistent naming conventions
- Long parameter lists (5+ parameters)
- Dead code (unused functions, variables)
- Comments that explain code (instead of making code self-documenting)

**Refactoring Signals:**
```
✓ Hard to understand at first glance
✓ Requires reading multiple files to understand one feature
✓ Changes in one area break other areas
✓ Difficult to test in isolation
✓ Takes too long to make simple changes
✓ Frequent bugs in certain areas
```

#### Step 2: Understand Existing Behavior

**Before Refactoring:**
1. Write tests that capture current behavior
2. Document what the code does
3. Identify dependencies and callers
4. Understand performance characteristics
5. Note any edge cases

**Test First Approach:**
```python
# Write tests for current behavior (even buggy behavior)
def test_current_behavior():
    result = buggy_function({"input": 42})
    assert result == expected_output
```

#### Step 3: Plan the Refactoring

**Refactoring Strategy:**
1. Break into small, incremental steps
2. Each step should be testable
3. Run tests after each step
4. Commit frequently
5. Have rollback plan ready

**Refactoring Checklist:**
```
✓ Tests written and passing
✓ Dependencies identified
✓ Refactoring steps planned
✓ Rollback strategy ready
✓ Estimated time and impact
```

#### Step 4: Apply Refactoring

**Common Refactoring Techniques:**

**Extract Method:**
```python
# Before
def process_order(order):
    if order.amount > 1000:
        discount = order.amount * 0.1
        tax = order.amount * 0.08
        total = order.amount - discount + tax
    else:
        discount = 0
        tax = order.amount * 0.08
        total = order.amount - discount + tax
    return total

# After
def process_order(order):
    discount = calculate_discount(order.amount)
    tax = calculate_tax(order.amount)
    return order.amount - discount + tax

def calculate_discount(amount):
    return amount * 0.1 if amount > 1000 else 0

def calculate_tax(amount):
    return amount * 0.08
```

**Extract Variable:**
```python
# Before
if user.age >= 18 and user.has_license and not user.suspended:
    allow_driving()

# After
can_drive = user.age >= 18 and user.has_license and not user.suspended
if can_drive:
    allow_driving()
```

**Inline Variable:**
```python
# Before
result = calculate(x, y, z)
final = result

# After
final = calculate(x, y, z)
```

**Replace Magic Number with Constant:**
```python
# Before
if len(items) > 50:
    apply_bulk_discount()

# After
MAX_ITEMS_FOR_BULK = 50
if len(items) > MAX_ITEMS_FOR_BULK:
    apply_bulk_discount()
```

**Rename Variable/Method:**
```python
# Before
def d(u, p):
    return u - p

# After
def calculate_discount(user_price, promo_code):
    return user_price - promo_code
```

#### Step 5: Verify Behavior

**Verification Steps:**
1. Run all tests - all should pass
2. Check performance (should not degrade)
3. Review code with team
4. Update documentation
5. Add new tests for improved code

**Verification Checklist:**
```
✓ All tests pass
✓ No new bugs introduced
✓ Performance acceptable
✓ Code is more readable
✓ Documentation updated
✓ Code review completed
```

### Common Refactoring Patterns

#### Pattern 1: Compose Method
Break large methods into smaller, well-named methods.

**When to Use:**
- Method is too long (20+ lines)
- Multiple levels of nesting
- Hard to understand at glance

**Benefit:** Each method does one thing well, easier to test and understand.

#### Pattern 2: Replace Conditional with Polymorphism
Replace complex conditional logic with polymorphism.

**When to Use:**
- Large switch/if-else on type
- Similar code in each branch
- Adding new types requires modifying conditionals

**Benefit:** Open-closed principle, easier to add new types.

#### Pattern 3: Extract Class
Move related methods and variables to a new class.

**When to Use:**
- Class has too many responsibilities
- Some methods and variables work together
- Class is becoming large and complex

**Benefit:** Single responsibility principle, better organization.

### Integration with Other Skills

**Works With:**
- **code-review**: Refactoring candidates often identified in reviews
- **debugging**: Debugging reveals code that needs refactoring
- **testing**: Tests provide safety net for refactoring
- **knowledge-graph**: Track refactoring patterns and outcomes

---

## Tier 2: Confident Refactoring (Session 16+)

### Advanced Refactoring Techniques

#### 1. Large-Scale Refactoring

**Gradual Refactoring Strategy:**
```
1. Identify target area (module, system)
2. Create abstraction layer around legacy code
3. Write new implementation behind abstraction
4. Gradually migrate callers to new code
5. Remove legacy code when all migrated
```

**Strangler Pattern:**
```python
# Old API
def legacy_function(data):
    # Complex legacy code
    pass

# New implementation
def new_function(data):
    # Clean, new code
    pass

# Abstraction layer
def function(data):
    if use_legacy():
        return legacy_function(data)
    else:
        return new_function(data)
```

#### 2. Test-Driven Refactoring

**TDD Refactoring Cycle:**
```
1. Write test for existing behavior (capture bugs if present)
2. Verify test passes (or captures bug)
3. Refactor code
4. Verify test still passes
5. Commit
6. Repeat
```

**Characterization Tests:**
```python
# Tests that document current behavior (even bugs)
def test_characterization():
    input = {"value": 42}
    output = legacy_function(input)
    assert output == "current_output"  # Document current behavior
```

#### 3. Performance Refactoring

**Profiling First:**
```
1. Profile code to identify bottlenecks
2. Measure current performance (baseline)
3. Optimize identified bottleneck
4. Measure improvement
5. Verify correctness
6. Document performance characteristics
```

**Common Optimizations:**
- Algorithm improvements (O(n²) → O(n log n))
- Reduce I/O operations
- Use caching
- Parallelize independent operations
- Reduce memory allocations
- Use more efficient data structures

**Example:**
```python
# Before - O(n²)
def find_duplicates_slow(items):
    duplicates = []
    for i, item1 in enumerate(items):
        for j, item2 in enumerate(items):
            if i != j and item1 == item2:
                duplicates.append(item1)
    return duplicates

# After - O(n)
def find_duplicates_fast(items):
    seen = set()
    duplicates = []
    for item in items:
        if item in seen:
            duplicates.append(item)
        seen.add(item)
    return duplicates
```

#### 4. Architecture Refactoring

**Monolith to Microservices:**
```
1. Identify bounded contexts
2. Create service boundaries
3. Extract services gradually
4. Implement communication (API, events)
5. Migrate data ownership
6. Decommission monolith components
```

**Layered Architecture:**
```
Presentation Layer (UI, API)
    ↓
Application Layer (Business Logic)
    ↓
Domain Layer (Core Business Rules)
    ↓
Infrastructure Layer (Database, External Services)
```

#### 5. Database Refactoring

**Common Database Refactorings:**
- Rename table/column
- Split table
- Merge tables
- Add/remove columns
- Change data types
- Add indexes
- Denormalize for performance
- Normalize for integrity

**Migration Strategy:**
```sql
-- Step 1: Add new column
ALTER TABLE users ADD COLUMN email_new VARCHAR(255);

-- Step 2: Migrate data
UPDATE users SET email_new = email;

-- Step 3: Verify data
SELECT COUNT(*) FROM users WHERE email_new IS NULL;

-- Step 4: Update application to use new column
-- Deploy application

-- Step 5: Remove old column
ALTER TABLE users DROP COLUMN email;
```

### Refactoring Best Practices

#### 1. Refactoring Safety Rules

**Martin Fowler's Rules:**
- Don't mix refactoring with adding new functionality
- Have tests before refactoring
- Take small steps
- Run tests frequently
- Commit after each successful step
- Have a rollback plan

#### 2. Refactoring Metrics

**Code Quality Metrics:**
- **Cyclomatic Complexity**: Lower is better (aim for < 10 per method)
- **Code Duplication**: Lower is better (aim for < 5%)
- **Test Coverage**: Higher is better (aim for > 80%)
- **Lines of Code**: Not always better, but complexity should decrease
- **Code Churn**: Areas with frequent changes need attention

**Technical Debt Metrics:**
- Age of code (older code may need updating)
- Bug density (bugs per line of code)
- Time to fix bugs in each area
- Number of TODO/FIXME comments

#### 3. Refactoring Automation

**Automated Refactoring Tools:**
- **IDE Features**: Rename, extract method, inline variable
- **Linters**: Enforce coding standards
- **Formatters**: Consistent code style (black, prettier)
- **Static Analysis**: Find code smells and bugs
- **Refactoring Tools**: Automated transformations

**Examples:**
```bash
# Python formatter
black .

# JavaScript formatter
prettier --write "**/*.js"

# Linter
eslint "**/*.js"
```

### Advanced Integration Patterns

**Multi-Skill Workflows:**
```
1. Use code-review to identify refactoring candidates
2. Use debugging to understand behavior before refactoring
3. Use testing to ensure safety
4. Use code-refactoring to improve code
5. Use code-review again to verify improvements
6. Use workflow-orchestrator to automate repetitive refactorings
```

---

## Tier 3: Anticipatory Refactoring (Session 17+)

### Proactive Refactoring Strategies

#### 1. Predictive Refactoring

**Predict Refactoring Candidates:**
- Analyze code metrics trends
- Identify areas with high bug rates
- Track code churn (frequent changes)
- Monitor complexity growth over time
- Identify dependencies with known issues

**Implementation:**
```
1. Track metrics over time
2. Identify trends (increasing complexity, decreasing quality)
3. Predict areas that will need refactoring
4. Refactor proactively before issues arise
```

**Risk Indicators:**
- Code complexity increasing
- Test coverage decreasing
- Bug reports increasing in certain areas
- Time to add features increasing
- Team velocity decreasing in certain areas

#### 2. Automated Refactoring Suggestions

**AI-Powered Refactoring:**
```
1. Analyze code patterns and best practices
2. Identify refactoring opportunities
3. Suggest specific refactorings
4. Show potential benefits
5. Provide automated transformations
```

**Example Suggestions:**
- "This method is 45 lines long, consider extracting helper methods"
- "This if-else chain could be replaced with polymorphism"
- "Duplicate code found in 3 places, consider extracting"
- "Magic number 3600 used in 5 places, consider constant"

#### 3. Refactoring Knowledge Base

**Building a Refactoring Knowledge Graph:**
```
1. Document all refactorings performed
2. Link refactorings to code patterns
3. Tag by type, impact, frequency
4. Enable semantic search for refactoring patterns
5. Learn from refactoring history
```

**Knowledge Base Schema:**
```json
{
  "refactoring_id": "REF-123",
  "type": "extract_method",
  "code_pattern": "long_method",
  "impact": "improved_readability",
  "location": "payment-service",
  "benefit": "reduced_complexity",
  "test_coverage": "maintained",
  "related_refactorings": ["REF-100", "REF-200"]
}
```

### Expert Refactoring Techniques

#### 1. Legacy System Refactoring

**Legacy Code Strategies:**
- **Sprout Method**: Add new method to existing class
- **Sprout Class**: Add new class for new functionality
- **Wrap Method**: Add wrapper around legacy method
- **Wrap Class**: Add wrapper around legacy class
- **Adapt Parameter**: Adapt parameters to new API

**Golden Master Testing:**
```python
# Run legacy system with many inputs
# Capture all outputs (golden master)
# Refactor code
# Run with same inputs, compare outputs
# Ensure outputs match
```

#### 2. Large-Scale Architecture Changes

**Event-Driven Architecture:**
```
1. Identify events in domain
2. Design event schemas
3. Implement event producers
4. Implement event consumers
5. Add event sourcing if needed
6. Migrate gradually
```

**CQRS (Command Query Responsibility Segregation):**
```
1. Separate read and write models
2. Use different databases if needed
3. Update commands modify write model
4. Read queries from optimized read model
5. Keep models synchronized via events
```

#### 3. Database Migration Refactoring

**Zero-Downtime Migration:**
```
1. Add new column/table alongside old
2. Write to both old and new
3. Backfill data
4. Update application to read from new
5. Deploy application
6. Stop writing to old
7. Remove old
```

**Schema Versioning:**
```python
# Versioned schema migrations
migrations = [
    {"version": "1.0.0", "script": "migration_001.sql"},
    {"version": "1.0.1", "script": "migration_002.sql"},
    {"version": "1.1.0", "script": "migration_003.sql"},
]
```

### Refactoring Culture

#### 1. Continuous Refactoring

**Boy Scout Rule:**
"Leave the code better than you found it."

**Continuous Improvement:**
- Refactor as you go, not in big batches
- Make small improvements regularly
- Pay off technical debt incrementally
- Schedule regular refactoring time
- Track technical debt metrics

#### 2. Refactoring as Learning

**Learning from Code:**
- Understand why code is the way it is
- Learn from patterns and anti-patterns
- Share refactoring insights with team
- Build refactoring playbooks
- Document lessons learned

#### 3. Refactoring Metrics and Trends

**Tracking Refactoring Impact:**
```
- Bug rate before/after refactoring
- Development time before/after refactoring
- Test coverage changes
- Code complexity trends
- Team velocity changes
- Developer satisfaction
```

### Best Practices Summary

**Do:**
- Have tests before refactoring
- Refactor in small steps
- Run tests frequently
- Commit often
- Understand code before changing it
- Focus on one refactoring at a time
- Use automated tools
- Document refactorings

**Don't:**
- Refactor without tests
- Mix refactoring with new features
- Make large changes at once
- Skip verification steps
- Refactor code you don't understand
- Refactor just because it looks different
- Ignore performance impact
- Skip documentation

---

## Examples and Use Cases

### Example 1: Refactoring a Complex Conditional

**Before:**
```python
def calculate_price(user, product, quantity):
    if user.is_vip:
        if product.category == "electronics":
            if quantity > 10:
                return product.price * quantity * 0.85
            else:
                return product.price * quantity * 0.90
        else:
            if quantity > 10:
                return product.price * quantity * 0.90
            else:
                return product.price * quantity * 0.95
    else:
        if product.category == "electronics":
            if quantity > 10:
                return product.price * quantity * 0.95
            else:
                return product.price * quantity * 0.98
        else:
            if quantity > 10:
                return product.price * quantity * 0.97
            else:
                return product.price * quantity * 1.0
```

**After (Polymorphism):**
```python
class PricingStrategy:
    def get_discount(self, product, quantity):
        pass

class VIPPricingStrategy(PricingStrategy):
    def get_discount(self, product, quantity):
        if product.category == "electronics":
            return 0.15 if quantity > 10 else 0.10
        else:
            return 0.10 if quantity > 10 else 0.05

class RegularPricingStrategy(PricingStrategy):
    def get_discount(self, product, quantity):
        if product.category == "electronics":
            return 0.05 if quantity > 10 else 0.02
        else:
            return 0.03 if quantity > 10 else 0.0

def calculate_price(user, product, quantity):
    strategy = VIPPricingStrategy() if user.is_vip else RegularPricingStrategy()
    discount = strategy.get_discount(product, quantity)
    return product.price * quantity * (1 - discount)
```

### Example 2: Extracting a Class

**Before:**
```python
class OrderProcessor:
    def __init__(self):
        self.user_database = Database("users")
        self.product_database = Database("products")
        self.payment_processor = PaymentProcessor()
        self.email_service = EmailService()
        self.inventory_service = InventoryService()

    def process_order(self, order):
        user = self.user_database.get(order.user_id)
        product = self.product_database.get(order.product_id)

        if not product.in_stock:
            raise OutOfStockError()

        if user.balance < product.price:
            raise InsufficientFundsError()

        payment = self.payment_processor.charge(
            user.payment_method,
            product.price
        )

        self.inventory_service.reduce_stock(product.id, 1)

        self.email_service.send(
            user.email,
            "Order Confirmation",
            f"Your order {order.id} is confirmed"
        )

        return payment
```

**After:**
```python
class OrderProcessor:
    def __init__(self, payment_gateway, inventory, email):
        self.payment_gateway = payment_gateway
        self.inventory = inventory
        self.email = email

    def process_order(self, order, user, product):
        self.inventory.check_availability(product)
        self.payment_gateway.charge(user, product.price)
        self.inventory.reduce_stock(product, 1)
        self.email.send_confirmation(user, order)

class Inventory:
    def check_availability(self, product):
        if not product.in_stock:
            raise OutOfStockError()

    def reduce_stock(self, product, quantity):
        # Reduce stock logic
        pass

class PaymentGateway:
    def charge(self, user, amount):
        if user.balance < amount:
            raise InsufficientFundsError()
        # Charge logic
        pass

class EmailService:
    def send_confirmation(self, user, order):
        self.email_service.send(
            user.email,
            "Order Confirmation",
            f"Your order {order.id} is confirmed"
        )
```

### Example 3: Database Refactoring

**Before (Denormalized):**
```sql
CREATE TABLE orders (
    id INT PRIMARY KEY,
    user_name VARCHAR(255),
    user_email VARCHAR(255),
    user_address VARCHAR(255),
    product_name VARCHAR(255),
    product_price DECIMAL(10, 2),
    quantity INT,
    total DECIMAL(10, 2)
);
```

**After (Normalized):**
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    total DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
```

---

## Common Mistakes

### Mistake 1: Refactoring Without Tests
**Problem:** No safety net, risk of breaking functionality
**Fix:** Always write tests before refactoring

### Mistake 2: Mixing Refactoring with New Features
**Problem:** Hard to identify if bugs are from refactoring or new code
**Fix:** Keep refactoring separate from adding features

### Mistake 3: Making Large Changes at Once
**Problem:** Hard to rollback, hard to identify what caused issues
**Fix:** Make small, incremental changes

### Mistake 4: Not Understanding the Code
**Problem:** Changes may break edge cases or hidden dependencies
**Fix:** Spend time understanding code before refactoring

### Mistake 5: Skipping Verification
**Problem:** Bugs introduced, performance degraded
**Fix:** Run tests, check performance, review with team

### Mistake 6: Over-Engineering
**Problem:** Too much abstraction, code becomes harder to understand
**Fix:** Refactor for clarity, not just for abstraction

### Mistake 7: Not Documenting Changes
**Problem:** Team doesn't understand changes, same issues recur
**Fix:** Document refactorings, reasons, and lessons learned

---

## Troubleshooting

### Q: I'm afraid to refactor because I might break something. What should I do?
A: Write comprehensive tests first. Tests provide a safety net and ensure refactoring doesn't change behavior.

### Q: How do I know when to stop refactoring?
A: Stop when the code is clean, understandable, and maintainable. Don't over-engineer or refactor just for the sake of it.

### Q: The code is terrible but I don't have time to refactor. What should I do?
A: Apply the Boy Scout Rule: make small improvements when you touch the code. Schedule dedicated refactoring time for larger improvements.

### Q: Should I refactor legacy code?
A: Yes, but be careful. Use wrapping strategies, write characterization tests, and refactor gradually.

### Q: How do I convince my team to prioritize refactoring?
A: Show the impact of technical debt (bugs, slower development). Track metrics to show improvement. Refactor incrementally to minimize risk.

---

## Related Skills

- **code-review**: Refactoring candidates often identified in reviews
- **debugging**: Debugging reveals code that needs refactoring
- **testing**: Tests provide safety net for refactoring
- **knowledge-graph**: Track refactoring patterns and outcomes