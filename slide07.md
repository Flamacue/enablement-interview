layout: true
class: compact, img-right
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: slide07

## Integrations

.center[![:scale 100%](./assets/logos/Consul_PrimaryLogo_Color_RGB.png)]
.center[![:scale 30%](./assets/logos/Envoy_Logo_Final_BLACK.png)]
.center[![:scale 100%](./assets/logos/Terraform_PrimaryLogo_Color_RGB.png)]

- Service Discovery
    - Use Consul DNS to reach registered and available services
- Consul Service Mesh
    - Visualize service upstreams and dependencies
    - Integrate with a data plane such as Envoy
- Consul Terraform Sync
    - Automate network/security changes based on catalog changes

???
As you can imagine, this one piece of functionality has numerous applications
and can provide you not only with accurate insights into your infrastructure and service architecture,
but it can enable many more capabilites of what you can do in your deployment environments

Consul provides it's own DNS service so that you can query consul to get the IP address of each registered service.
This is incredibly beneficial when our infrastucture becomes much less static, and we start adopting an
immutable infrastructure approach when deploying applications, especially when using an orchestration 
platform like Nomad or Kubernetes

Consul has a much larger feature called Consul Service Mesh, in which the service catalog acts as
the backbone as one part of the control plane. When integrating applications using service mesh and a 
data plane proxy such as Envoy, your applications no longer have to worry about the nitty gritty details
of the network, and just have to worry about their service dependencies

And last if you have any needs around network/security policy changes, consul-terraform-sync can monitor
changes in services' state and health using consul's service catalog, and leverages terraform as the 
underlying automation tool to drive those relevant changes

---
