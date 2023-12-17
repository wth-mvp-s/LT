Ensuring coherence and consistency in naming conventions across your application can significantly improve code maintainability and readability. When there is a discrepancy in naming between the frontend and the backend, it can indeed lead to confusion and can increase the time taken to develop and debug.

Here are some strategies to handle naming discrepancies:

1. Align Naming Conventions:
Best Practice: The best practice is to align naming conventions across both the frontend and the backend.
Common Vocabulary: Establish a common vocabulary or naming convention that is used throughout the application.
2. Documentation:
Clear Documentation: Where naming differences are unavoidable, clear documentation is essential.
Mapping Table: Maintain a mapping table/document that lists the discrepancies and explains what each term means on each side.
3. Adaptation Layer:
Backend Adaptation: The backend can provide an adaptation layer that translates frontend naming to backend naming (e.g., using aliases in SQL or DTO transformations in the code).
Frontend Adaptation: Alternatively, the frontend can adapt the naming from the backend.
4. Single Source of Truth:
Guiding Side: Decide which side (front or back) will be the single source of truth for naming conventions.
Consistency: Once decided, ensure consistency in naming based on the guiding side.
5. Refactoring:
Code Refactoring: If possible and feasible, refactor the code to make the naming conventions consistent.
Incremental Changes: Refactoring can be done incrementally as parts of the codebase are updated for other reasons.
6. Communication:
Team Communication: Regular communication within the development team is vital to address any discrepancies and find solutions.
Feedback Loop: Establish a feedback loop for continuous improvement in naming conventions.
Conclusion:
Addressing naming discrepancies is essential for maintaining a clean and understandable codebase. While aligning naming conventions is the ideal solution, where this isn’t possible, clear documentation, adaptation layers, and consistent communication within the team can help manage the discrepancies effectively. Deciding on a single source of truth for naming and undertaking periodic refactoring can also contribute to reducing naming inconsistencies over time.