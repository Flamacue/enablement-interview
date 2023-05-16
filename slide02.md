layout: true
class: [no class]
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide02

# What is Consul?

- Consul is a service networking solution that enables teams to manage secure network connectivity between services across on-prem and multi-cloud environments and runtimes

- Consul provides a *control plane* that enables you to register, query, and secure services deployed across your network

- The control plane is responsible for securing the mesh, **facilitating service discovery**, health checking, policy enforcement, and other similar operational concerns

???

Before we can start talking about the service catalog, let's first talk about what Consul is

Consul is at its core a networking solution for deployed services in your datacenter(s) or cloud environment(s) of choice

It has a lot of functionality that we will not be covering in this presentation, however, we will talk about
how the service catalog relates to other features of consul, and how it can integrate with some other products as well

You probably have heard of the term service mesh before, and we typically think of service meshes in terms of a
control plane, and a data plane

Consul is part of the control plane that is responsible for a plethora of operational concerns in a service mesh,
 but since we are talking about the service catalog specifically today, we will be focusing on consul's ability to
facilitate service discovery

---
