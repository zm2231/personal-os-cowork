---
name: performance-profiling
description: "Code performance analysis, bottleneck identification, and optimization techniques."
---

# Performance Profiling

Systematic code performance analysis, bottleneck identification, and optimization strategies.

## Tier 1: Guided Performance Profiling

### What This Skill Does

Guides you through profiling code to identify performance bottlenecks and implement optimizations.

### When to Use This Skill

- **Slow Code**: Functions taking too long
- **High Resource Usage**: CPU or memory heavy
- **Performance Degradation**: Code getting slower over time
- **Optimization**: Improving existing code performance
- **Benchmarking**: Comparing performance across versions

### Guided Profiling Workflow

#### Step 1: Measure Performance

**Before Optimizing:**
```python
import time

def measure_function(func):
    """Measure function execution time"""
    start = time.time()
    result = func()
    duration = time.time() - start
    return result, duration

# Usage
result, duration = measure_function(slow_function)
print(f"Execution time: {duration:.4f} seconds")
```

#### Step 2: Profile Code

**Python Profiling:**
```bash
# cProfile - standard library
python -m cProfile -s time script.py

# Py-Spy - sampling profiler
pip install py-spy
py-spy record --output profile.svg -- python script.py

# Memory profiling
pip install memory_profiler
python -m memory_profiler script.py
```

**JavaScript Profiling:**
```javascript
// Node.js built-in profiler
node --prof script.js
node --prof-process isolate-*.log > profile.txt

// Chrome DevTools
// Open DevTools > Performance > Record
```

#### Step 3: Identify Bottlenecks

**Common Bottlenecks:**
- Inefficient algorithms (O(n²) vs O(n log n))
- Excessive I/O operations
- Network latency
- Database queries (N+1 problem)
- Memory allocation
- Lock contention
- Unoptimized loops

#### Step 4: Optimize

**Optimization Techniques:**
1. **Algorithm optimization**: Better algorithms
2. **Caching**: Store expensive computations
3. **Lazy loading**: Load only when needed
4. **Parallelization**: Use multiple threads/cores
5. **Batching**: Combine multiple operations
6. **Indexing**: Add database indexes
7. **Memory pools**: Reuse objects instead of allocating

---

## Tier 2: Confident Profiling

### Advanced Techniques

#### 1: Profiling Tools

**Python:**
```python
# cProfile with visualization
import cProfile
import pstats
import io

pr = cProfile.Profile()
pr.enable()
# Run code
pr.disable()

s = io.StringIO()
ps = pstats.Stats(pr, stream=s).sort_stats('cumulative')
ps.print_stats()
print(s.getvalue())
```

**JavaScript:**
```javascript
// Performance API
const start = performance.now();
// Run code
const end = performance.now();
console.log(`Execution time: ${end - start}ms`);

// Profiling API
performance.mark('start');
// Run code
performance.mark('end');
performance.measure('myFunction', 'start', 'end');
```

#### 2: Memory Profiling

**Python Memory Profiler:**
```python
from memory_profiler import profile

@profile
def memory_intensive_function():
    large_list = [i for i in range(1000000)]
    return sum(large_list)
```

#### 3: Database Query Optimization

**N+1 Query Problem:**
```python
# Bad - N+1 queries
for user in users:
    posts = db.query("SELECT * FROM posts WHERE user_id = ?", user.id)
    user.posts = posts

# Good - Single query with join
users_with_posts = db.query("""
    SELECT u.*, p.*
    FROM users u
    LEFT JOIN posts p ON p.user_id = u.id
""")
```

---

## Tier 3: Anticipatory Profiling

### Proactive Strategies

#### 1: Continuous Performance Monitoring

**APM Integration:**
```python
import prometheus_client

# Metrics
request_duration = prometheus_client.Histogram(
    'request_duration_seconds',
    'Request duration',
    ['endpoint']
)

@app.route('/')
def home():
    start = time.time()
    # Handle request
    duration = time.time() - start
    request_duration.labels(endpoint='home').observe(duration)
```

#### 2: Performance Regression Testing

**Benchmark Tests:**
```python
import pytest
import time

def test_performance_regression():
    """Ensure performance doesn't degrade"""
    start = time.time()
    result = critical_function()
    duration = time.time() - start

    # Must complete in under 1 second
    assert duration < 1.0, f"Performance regression: {duration}s"
```

### Best Practices

**Do:**
- Measure before optimizing
- Profile to find bottlenecks
- Optimize critical paths
- Monitor performance in production
- Use appropriate algorithms
- Cache expensive operations

**Don't:**
- Optimize without measuring
- Premature optimization
- Optimize all code
- Ignore production metrics
- Use inefficient algorithms
- Skip monitoring

---

## Related Skills

- **debugging**: Debugging performance issues
- **code-refactoring**: Refactoring for performance
- **workflow-orchestrator**: Automating profiling