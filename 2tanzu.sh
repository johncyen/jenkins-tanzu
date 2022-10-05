CMD1="export KUBECTL_VSPHERE_PASSWORD=P@ssw0rd"
CMD2="export SC_IP=10.0.68.2"
CMD3="kubectl vsphere login --server=https://10.0.68.2 --vsphere-username administrator@vsphere.local --tanzu-kubernetes-cluster-namespace srcloud --insecure-skip-tls-verify"

#echo ${CMD1}
#echo ${CMD2}
echo ${CMD3}
eval ${CMD1}
eval ${CMD2}
eval ${CMD3} > /dev/null 2>&1

CMD4="kubectl config get-contexts"
#echo ${CMD4}
eval ${CMD4}
echo "kubectl config use-context 10.0.68.2"
echo "or"
echo "kubectl config use-context srcloud"
echo ""

