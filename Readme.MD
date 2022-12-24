https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/

deleteDir: Recursively delete the current directory from the workspace
Recursively deletes the current directory and its contents. Symbolic links and junctions will not be followed but will be removed. To delete a specific directory of a workspace wrap the deleteDir step in a dir step. 