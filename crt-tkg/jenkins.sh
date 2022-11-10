Tanzu_Prod_server="172.27.21.2"
Tanzu_Cluster_name="tanzu-kubernet-cluster"
ID="administrator@vsphere.local"
export KUBECTL_VSPHERE_PASSWORD='!QAZ2wsx#EDC'
kubectl vsphere login --server=$Tanzu_Prod_server --vsphere-username $ID --insecure-skip-tls-verify;
kubectl delete tanzukubernetescluster $Tanzu_Cluster_name
