The developer is PhD student, most code is for research prototype. 
You need to ship fast and not for production use. 
Don't over pursue production-class and over-complexify implemention.

- use 'uv run' to run python code, use 'uv run python -m pytest tests/unit/test_xx.py -v' to test
- write clear argument and return type for python function, clear comment
- Prioritize code readability, reproducibility, and scalability.
- Follow best practices for system and agent developement in scientific/research applications.\
- Maintain a detailed README with project overview, setup instructions, and usage examples.


1. Guiding Principles

- **Separation of Concerns**: Each component has a distinct responsibility (e.g., data modeling, state management, algorithm execution, simulation orchestration).
- **Encapsulation**: Internal state and implementation details of components are hidden behind well-defined public APIs.
- **Dependency Inversion**: High-level modules (like the `Simulator`) depend on abstractions (like `BaseOptimizer`), not on concrete implementations.
- **Configuration-Driven**: All variable parameters (paths, simulation settings, algorithm constants) are managed via Hydra configuration files, not hardcoded.
- **Testability**: The decoupled nature of the components allows for robust unit and integration testing.
- Each function should have at most 80 lines of codes (except comment), make it clear and readable for even beginners
- Write comprehensive docstrings for all functions and classes.
- When write markdown documentation, 1000 lines at most for single markdown, split it for better readability.
-  Single Origin Principle, make clear file structure.


Development Guidelines:

- Use the minimal amount of code necessary to complete the current task
- Do not make large-scale changes, focusing on current task
- Do not perform unrelated edits; stay focused on the task at hand
- Code must be precise, modular, and testable
- Do not break existing functionality if not nesscesary
- If I need to configure anything (e.g., Supabase/AWS), clearly tell me
- don't consider onnx etc library for LLM inference service, we only do research work, not production
- If the task is simple, don't over complexify it. try to use minimal ammount of code to implement



machine learning / LLM agent development

- write clear shape and type for numpy array
- use hydra for configuration, use wandb for experiment / LLM tracking
- for functions performing matrix transformation, make it clear exactly what you are doing and why


optimization problem: 
- for variables in optimization problem, write clear variable meaning and shape, and even unit for practical problem
- read YALMIP for optimization problem in matlab, https://yalmip.github.io/examples/ https://yalmip.github.io/tutorials/, look for their api


Reproducibility and Version Control:
- Use version control (Git) for code
- Commit often with meaningful commit message, sync it with remote
- When you implement large and significant, consider use new branch

Key Conventions:

1. Follow PEP 8 style guide for Python code.
2. Use meaningful and descriptive names for variables, functions, and classes.
3. Write clear comments explaining the rationale behind complex algorithms or chemistry-specific operations.
4. Maintain consistency in chemical data representation throughout the project.
