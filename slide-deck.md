---
marp: true
theme: default
class:
  - lead
  - invert
paginate: true
---

# AI in the Code Review Pipeline
## Practical Wins, Real Limits

*Lunch & Learn*
Jonathan · grndlvl

---

# Why This Talk?

I wanted to cut down bottlenecks in PR review and test AI in real workflows.

**AI ≠ replacement, AI = multiplier**

<!-- Presenter:

- There are several uses of AI in the workflow lifecyle.
- Only focus on 2
    - Code review
    - Agentic coding
-->

---

# Why Code Review Matters

✅ Ensures quality and maintainability
✅ Catches bugs early
✅ Shares knowledge across the team
✅ An essential training tool

⚠️ But… it’s also:
- Time-consuming
- Inconsistent
- Frustrating bottleneck

---

# The Code Review Bottleneck

- PRs waiting too long
- Style nitpicks dominate
- Inconsistent review quality

![bg right width:700px](./images/tickets-in-review2.png)

---

# AI-Assisted Code Review

**GitHub Action + LLM = Faster Feedback**

- Flags style, complexity, docs issues
- Summarizes diffs
- Trains junior devs with best practices

![bg right width:600px](./images/gpt-code-review.png)

<!-- Presenter:
Catches low hanging fruit before it gets assigned to a review.
-->

---

# Benefits vs. Limitations

**Benefits**
- Speed
- Consistency
- Reviewer focus

**Limitations**
- False positives
- Needs oversight
- Not architecture-level

---

# Try it out

**GitHub Workflow for AI Code Quality & Security Check**
[https://github.com/zivtech/gh-ai-workflow](https://github.com/zivtech/gh-ai-workflow)

---

# Future Enhancements

**Current state:** One-shot reviews work, but create noise.
**Goal:** Fewer false positives, better context, higher-quality comments.
**Solution:** **Use coding agent instead of one-shot review!**

---

# One-Shot vs. Coding Agent

| Dimension           | One-Shot LLM (in PR Action)                  | Coding Agent (multi-step in PR Action)                          |
|---------------------|----------------------------------------------|-----------------------------------------------------------------|
| Accuracy & Noise    | Higher chance of false positives/duplicates  | Iterates + self-filters → fewer false positives, clearer signal |
| Context Handling    | Limited to preloaded diff/snippets           | Can fetch related code → fewer missed issues (false negatives)  |
| Output Quality      | Raw comments, may be repetitive              | Prioritized, deduped, and styled for consistency                |

---

# From Review to Coding

If agents can improve **reviews**,
imagine what they can do for **writing and fixing code**.
This leads us to **agentic coding**.

---

# Beyond Review: Agentic Coding

---

# Agentic Coding Defined

> “LLM acts like a junior dev — write, test, fix, repeat.”

**Agent Loop:**
1. **Generate** candidate code
2. **Check** against acceptance criteria
3. **Fix** mistakes & refine
4. **Repeat** until ✅criteria are met

---

# Example Acceptance Criteria

**Goal:** Deliver working feature that meets expectations.

**Acceptance Criteria (generic):**
- ✅ Code integrates correctly with the system
- ✅ Style & standards are followed
- ✅ Output matches expected behavior

Agent iterates until all criteria are satisfied.

---

# Demo Time!

```
You are a Drupal expert working on a Drupal 11 site.

Task:
Write code so that all node titles are capitalized.

Process:
1. Generate an initial Drupal-appropriate implementation (using hook_preprocess_node).
2. Check against the acceptance criterion: ALL TITLES ARE CAPITALIZED.
3. If the code does not meet this criterion, refine and try again.
4. Repeat until the acceptance criterion is satisfied.

Acceptance Criterion:
- ✅ All node titles in rendered output on the site are capitalized.

At the end, output the final refined Drupal 11 code that meets the criterion.
```

---

# AGENTS.md

A README.md file for **coding agents**.

**Purpose**
- Clear, predictable place for agent instructions
- Precise guidance: build steps, tests, conventions, acceptance criteria
- Keeps human-facing docs clean while giving agents what they need

---

# Additional Tips

**<span style="color:red;">ALWAYS RUN ON A CLEAN BRANCH!!!</span>**
- Commit any changes before running the agent to prevent loss of work
- Sometimes the machine thinks it knows better or it tries to clean up and messes up your work
- Commit changes incrementally and often as it can destroy it's own work

**Be pendantic**
- Small, precise tasks work best
- If you want a specific approach, say so
- Give it as much context as you can including Class names and methods

---

# Other Workflows AI Helps In

- Docs generation 📖
- Test scaffolding 🧪
- Refactoring ♻️
- CI/CD pipelines ⚙️
- Knowledge capture 🧠
- Bug triage 🐛
- Ticket writing 📝

---

# Human in the Loop

**AI excels at:**
- Boilerplate
- Docs
- Testing

**Humans must own:**
- System design
- Security
- Trade-offs

---

# Takeaways

- Code review augmentation → productivity gains
- Agentic coding → good for prototypes, not production alone
- Humans stay essential

---

# Q&A

❓

*Where would you trust AI in your own workflow?*
