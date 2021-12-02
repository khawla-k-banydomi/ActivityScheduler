### The first and most important step in the software development is to select the Architecture; in this context I choose Layered architecture.

Layered architecture is implemented strictly following MVC approach. Moreover business logic is 
completely separated from controllers while implementing to make sure that code is reusable, 
easy to refactor and a better way to structure project overall.

The separation of concerns among components is a powerful feature of the layered architecture pattern.
Components within a specific layer only deal with logic specific to that layer.


#### I choose it since it has the following *advantages*:
- High degree of testability Because components are associated with specific layers of the architecture,other layers can be mocked or stubbed, making this pattern relatively simple to test.
- This pattern is so well known and is not overly complex to implement, it is a natural choice for most business-application development.
- Additionally, because most companies develop applications by separating skill sets by layers, this pattern becomes a natural choice for most business-application development.
- Maintainable
- Separate "roles" are simple to assign.
- It is simple to update and improve layers separately.

**This Pattern is Ideal for:**

- Line-of-business apps that perform more than just CRUD operations
- New applications that must be developed quickly
- Teams comprised of inexperienced developers who are unfamiliar with other architectures, but whose applications necessitate strict maintainability and testability standards
