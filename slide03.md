layout: true
class: [no class]
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide03

## What is a Service?

- A service is an entity in your network that performs a specialized operation or set of related operations

- Typically a service is software that you want to make available to users or other programs with access to your network

- Usually exposes a REST/gRPC interface to communicate/expose their operations

???

Of course, we need to define what a service is before we continue because it can have many definitions
to different people

We define a service as an entitiy in your network that performs some sort of specialized operation or set of
related ops

Typically this is going to be some piece of software that you want to make available to users or other services
that have access to your network

When we think of services, especially when thinking of microservices, they usually expose a REST API or 
some gRPC interface for communication, but services can also be things such as data stores like postgres or redis,
a grafana dashboard, or some other form of frontend application

---
