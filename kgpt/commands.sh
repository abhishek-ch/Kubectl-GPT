python src/kgpt.py "list all pods with name argocd in the namespace rwp" config.ini


python src/kgpt.py "list all secrets with name argocd in the namespace rwp" config.ini

python src/kgpt.py "show me all pods which are not Running in the namespace rwp" config.ini

python src/kgpt.py "list top 5 pods using the minimum cpu in the namespace rwp" config.ini

python src/kgpt.py "list top 5 pods using the maximum memory in the namespace rwp" config.ini

python src/kgpt.py "total number of configmaps in the namespace rwp" config.ini

python src/kgpt.py "what is the cpu usage of abc-python-sa in the namespace rwp" config.ini




kubectl run trial --image=nginx --restart=Never -n rwp && sleep 5