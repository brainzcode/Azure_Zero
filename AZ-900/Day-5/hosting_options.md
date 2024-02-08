# Hosting Options on Azure: VMs, Containers, and Azure App Service

- ## Virtual Machines (VMs):
  - VMs offer maximum control over the hosting environment and allow for precise configuration.
  - They are suitable for users familiar with traditional hosting methods and provide flexibility in customization.

- ## Containers:
  - Containers provide isolation and individual management of different hosting aspects.
  - They offer a robust hosting solution, allowing for scalability and efficient resource utilization.

- ## Azure App Service:
  - Azure App Service is another hosting option provided by Azure.
  - It offers a platform-as-a-service (PaaS) solution for hosting web applications, APIs, and mobile backends.
  - App Service simplifies deployment and management tasks, providing scalability and high availability.

## Azure App Service.
- ## Azure App Service Overview:

  - ### Functionality:
    - Azure App Service enables users to develop and host web apps, background jobs, mobile back-ends, and RESTful APIs in their preferred programming language without managing underlying infrastructure.
    - Azure App Service is a robust hosting option in Azure, allowing users to host web applications, REST APIs, and mobile back ends.
    - Users can focus on app development and maintenance while Azure manages the environment.


  - ### Features:
    - Offers automatic scaling and high availability to ensure optimal performance.
    - Supports both Windows and Linux environments.

  - ### Deployment:
    - Supports automated deployments from various repositories such as GitHub, Azure DevOps, or any Git repository, facilitating a continuous deployment approach.

  - ### Supported Languages and Environments:
    - Supports multiple programming languages such as .NET, .NET Core, Java, Ruby, Node.js, PHP, and Python.
    - Compatible with both Windows and Linux environments.


- ## Types of app services
    - ### With App Service, you can host most common app service styles like:

        - Web apps
        - API apps
        - WebJobs
        - Mobile apps
    - ### App Service handles most of the infrastructure decisions you deal with in hosting web-accessible apps:

        - Deployment and management are integrated into the platform.
        - Endpoints can be secured.
        - Sites can be scaled quickly to handle high traffic loads.
        - The built-in load balancing and traffic manager provide high availability.

    - ### All of these app styles are hosted in the same infrastructure and share these benefits. This flexibility makes App Service the ideal choice to host web-oriented applications.

    - ## Web apps
        - **App Service includes full support for hosting web apps by using ASP.NET, ASP.NET Core, Java, Ruby, Node.js, PHP, or Python. You can choose either Windows or Linux as the host operating system.**

    - ### API apps
        - **Much like hosting a website, you can build REST-based web APIs by using your choice of language and framework. You get full Swagger support and the ability to package and publish your API in Azure Marketplace. The produced apps can be consumed from any HTTP- or HTTPS-based client.**

    - ### WebJobs
        - **You can use the WebJobs feature to run a program (.exe, Java, PHP, Python, or Node.js) or script (.cmd, .bat, PowerShell, or Bash) in the same context as a web app, API app, or mobile app. They can be scheduled or run by a trigger. WebJobs are often used to run background tasks as part of your application logic.**

    - ### Mobile apps
        - **Use the Mobile Apps feature of App Service to quickly build a back end for iOS and Android apps. With just a few actions in the Azure portal, you can:**

            - Store mobile app data in a cloud-based SQL database.
            - Authenticate customers against common social providers, such as MSA, Google, Twitter, and Facebook.
            - Send push notifications.
            - Execute custom back-end logic in C# or Node.js.

    - **On the mobile app side, there's SDK support for native iOS and Android, Xamarin, and React native apps.**

