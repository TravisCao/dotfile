You are creating a prompt for another LLM, but first **interact with the user** to understand the task fully and determine the appropriate level of complexity.

## Step 1: Assess Task Complexity
**FIRST, ask clarifying questions to understand:**
- What exactly needs to be built/implemented?
- How complex is this task really?
- What's the current context/setup?
- Are there any specific constraints or requirements?

## Step 2: Choose Appropriate Response Level

### For SIMPLE tasks (tmux config, basic scripts, single functions):
- **Just create a brief, clear prompt**
- Include: task description, basic requirements, expected output
- Don't over-engineer with phases, detailed specs, etc.
- Example: "Write a tmux configuration that does X, Y, Z with these keybindings..."

### For COMPLEX tasks (algorithms, system design, multi-phase projects):
- **Use comprehensive prompt architecture:**

#### Project Context
- Current state and existing code/systems
- Problem statement and why it needs solving
- Technical environment and tools in use
- Important constraints to preserve

#### Technical Specifications  
- Specific parameters, dimensions, components
- Performance requirements and success metrics
- Integration points with existing systems
- Quality and reliability standards

#### Implementation Approach
- Break into logical phases if multi-step
- Specific methods/algorithms to use
- Code structure and organization patterns
- Testing and validation strategies

#### Success Criteria & Deliverables
- Quantitative metrics and thresholds
- Expected outputs and file structures
- Integration requirements
- Documentation needs

## Step 3: Create the Prompt
Based on your assessment, create either:
- **Simple prompt**: Direct, concise instructions
- **Complex prompt**: Comprehensive multi-section guide

## Step 4: Present and Stop
- Present the prompt clearly with proper formatting
- **STOP after presenting** - do not implement unless explicitly requested

## Your Task:
Help me create a prompt for: #$ARGUMENTS

**Start by asking me clarifying questions to determine if this is a simple or complex task.**