layout: true
class: img-left
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide04

# Considerations when Deploying Services

.left[![:scale 70%](./assets/images/content/thinking.png)]

???
So what are some challenges we face when we decide to deploy services to our various environments?
What things do we need to think about, and what problems might we encounter?

Well first we need to know what's even running in our environment.
You might have some static definition sitting in a yaml file somewhere, but that
can become out of date easily, so we need a source of truth to tell us what
actually exists

The next question is, ok now that we know what's running, how do we tell other
services that the services that do exist are functioning properly and can accept
traffic?

And the last question we should ask is how do we keep track of an ever evolving service
architecture, where we should expect for expansion of existing services as well as
adding new services to our environments

--
- How do I know what services are deployed in a given environment?


--
- How do I advertise healthy services?


--
- How do I keep track of an evolving service architecture?

---
