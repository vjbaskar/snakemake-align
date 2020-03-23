snakemake --use-singularity \
    --jobs 999 \
    --printshellcmds \
    --rerun-incomplete \
    --cluster-config cluster/cluster.conf \
    --cluster " bsub -M {cluster.memory} -R {cluster.resources} -o logs/temp.out -e logs/temp.err -J temp_1 " \
    -p #-s align.snk
