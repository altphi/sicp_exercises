# sicp_exercises
My attempts at completing the exercises in the [SICP](https://web.mit.edu/6.001/6.037/sicp.pdf) text.

## prereqs
[(chez (chez scheme))](https://www.scheme.com/)

## run a script
`scheme --script ./file.scm`

## run a script and get a repl
`scheme ./file.scm`

## run a repl
`scheme`

## aligning the Abelson/Sussman videos with the text covered (WIP)

| Lecture#                                                   | Title                                        | SICP Text                  | Notes                                                                   |
|------------------------------------------------------------|----------------------------------------------|----------------------------|-------------------------------------------------------------------------|
| [1A](https://youtu.be/-J_xL4IGhJA?si=hdQq1Iy3uuvvB57m)     | Overview and Introduction to Lisp            | Chapter 1 (1.1–1.2)        | Introduces Scheme/Lisp basics, expressions, and procedures.             |
| [1B](https://youtu.be/V_7mmwpgJHU?si=pzzQmW_DVTu3iy2n)     | Procedures and Processes; Substitution Model | Chapter 1 (1.1–1.3)        | Covers procedure definitions, substitution model, and evaluation.       |
| [2A](https://youtu.be/eJeMOEiHv8c?si=poxco0W0UIet1Rbr)     | Higher-order Procedures                      | Chapter 1 (1.3)            | Focuses on procedures as arguments/returns (e.g., `sum`, `map`).        |
| [2B](https://youtu.be/DrFkf-T-6Co?si=e_eFEa9iAu4sbXkT)     | Compound Data                                | Chapter 2 (2.1–2.2)        | Introduces pairs, lists, and data abstraction.                          |
| [3A](https://youtu.be/PEwZL3H2oKg?si=ZdWJXrlp_ncQuoB3)     | Henderson Picture Language                   | Chapter 2 (2.2)            | Uses picture language to illustrate data abstraction and closures.      |
| [3B](https://youtu.be/bV87UzKMRtE?si=CPjtvN7yOO8vtP7M)     | Symbolic Differentiation; Quotation          | Chapter 2 (2.3)            | Covers symbolic data, manipulation, and quotation in Scheme.            |
| [4A](https://youtu.be/_fXQ1SwKjDg?si=v16AtLxtwzOAgvVu)     | Pattern-directed Programming; Unification    | Chapter 2 (2.4) or 4 (4.3) | Likely touches on pattern matching, possibly logic programming (Ch. 4). |
| [4B](https://youtu.be/OscT4N2qq7o?si=MIhf5Vrutpwtni5d)     | Generic Operators                            | Chapter 2 (2.4–2.5)        | Discusses generic operations and data-directed programming.             |
| [5A](https://youtu.be/dO1aqPBJCPg?si=t-fwgdvJZ0Ah-nlb)     | Assignment and State                         | Chapter 3 (3.1)            | Introduces mutable state and assignment operations.                     |
| [5B](https://youtu.be/yedzRWhi-9E?si=Ovr2heCnugyU-pmW)     | Computational Objects                        | Chapter 3 (3.2–3.3)        | Covers modeling objects with state, likely environment model.           |
| [6A](https://youtu.be/JkGKLILLy0I?si=2qmVpAQWmZhVDPct)     | Streams, Part 1                              | Chapter 3 (3.5)            | Introduces streams for delayed evaluation and infinite sequences.       |
| [6B](https://youtu.be/qp05AtXbOP0?si=BIx5Q5II1SUVBnVG)     | Streams, Part 2                              | Chapter 3 (3.5)            | Continues streams, possibly with applications like series or filters.   |
| [7A](https://youtu.be/aAlR3cezPJg?si=ycba2Au1_7tWdqyr)     | Metacircular Evaluator, Part 1               | Chapter 4 (4.1)            | Introduces Scheme interpreter (eval/apply core).                        |
| [7B](https://youtu.be/QVEOq5k6Xi0?si=j2bPbjxmqn6DjlnG)     | Metacircular Evaluator, Part 2               | Chapter 4 (4.1)            | Extends evaluator, possibly with environments or special forms.         |
| [8A](https://youtu.be/GReBwkGFZcs?si=ukSg15sBnADZ9lC3)     | Logic Programming, Part 1                    | Chapter 4 (4.3)            | Covers logic programming and query systems (e.g., micro-Prolog).        |
| [8B](https://youtu.be/GReBwkGFZcs?si=ZVT0UcIv7zcYcFgc)     | Logic Programming, Part 2                    | Chapter 4 (4.3)            | Continues logic programming, possibly unification or query evaluation.  |
| [9A](https://youtu.be/cIc8ZBMcqAc?si=H--feRPz1CqC3Uy3)     | Register Machines                            | Chapter 5 (5.1–5.2)        | Introduces register machine model and simulation.                       |
| [9B](https://youtu.be/Z8-qWEEwTCk?si=uAHDG2HVDz4Y3pho)     | Explicit-control Evaluator                   | Chapter 5 (5.4)            | Discusses evaluator as a register machine with explicit control.        |
| [10A](https://youtu.be/TqO6V3qR9Ws?si=KcGsbEi0qidLYCKz)    | Compilation                                  | Chapter 5 (5.5)            | Covers compiling Scheme to register machine code.                       |
| [10B](https://youtu.be/AbK4bZhUk48?si=l8sMWMdthdwAftob)    | Storage Allocation and Garbage Collection    | Chapter 5 (5.3)            | Discusses memory management and garbage collection.                     |
