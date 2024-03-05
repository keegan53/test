pipeline{
    agent any
        stages{
            stage("k8s"){
                steps{
                    withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'cluster', contextName: '', credentialsId: 'credentials', namespace: 'default', serverUrl: 'https://40BEB49E6083C8C8EBEB9E43DF6294BB.gr7.eu-west-2.eks.amazonaws.com']]) 
                    {
                    sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.20.5/bin/linux/amd64/kubectl"'
                    sh 'chmod u+x ./kubectl'
                    sh './kubectl get nodes'
                    sh './kubectl create -f pod.yaml'
                    sh './kubectl get pods'
                    }
                }    
        }
    }
}
