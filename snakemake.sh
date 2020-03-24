mkdir -p bams logs metrics refs
snakemake --use-singularity \
    --jobs 999 \
    --printshellcmds \
    --rerun-incomplete \
    --cluster-config config/lsf.json \
    --configfile config/smk.yaml \
    --cluster " bsub -M {cluster.memory} -R {cluster.resources} -o {cluster.output} -e {cluster.error} -J {cluster.name} -q {cluster.queue} -n {cluster.nCPUs} " \
    -p #-s align.snk
