1. Install Minikube or any alternative and make sure kubectl is installed and running.
2. Install helm.
3. create a folder and name it chart.
4. Create a helm chart.

5. Navigate to Charts -> value.yml.

    In **Image** block change the **repository** section to your docker image name from repository.(you can specify version of docker image if exist in tags section)

    In **Service** block change the **type** section to **LoadBalancer** and **Port** section to your desired port number (make sure your docker is exposed to same port number ).

6. Dry run the helm to check if there is any error

7. Install the applciation using helm 

8. Check if all the pods, cluster, deployment and replicas are up and running.

9. Copy the External-IP address of your cluster and past it in your browers followed by the port number to check if the application is up and running.
