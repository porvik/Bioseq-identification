# 🧬 Bioseq-identification

**BioSeq Identification** is a collaborative, educational **bioinformatics project** simulating a real workflow for processing sequencing data.  

This project uses a set of standard tools that together form a complete workflow for processing and interpreting sequencing data.

**Quality control** is performed with FastQC and MultiQC, which provide summaries of read quality, GC content, and potential contamination. These reports ensure that the raw data are suitable for downstream analysis.

**Sequence alignment** is carried out with BWA or Bowtie2. Both tools map sequencing reads to a reference genome using index-based methods and produce alignment files that serve as the foundation for subsequent steps.

For **taxonomic identification**, the workflow relies on Kraken2 and MEGAN. Kraken2 classifies reads using exact k-mer matches, while MEGAN interprets these classifications to reconstruct taxonomic profiles and visualize community structure, making the tools suitable for metagenomic datasets.

**Workflow management and reproducibility** are handled by Snakemake or Nextflow. These systems allow the pipeline to be defined as a set of rules or processes, ensuring consistent execution, version control, and scalability across computing environments.

Finally, **data visualization and exploratory analysis** are performed in R using ggplot2. This environment supports the creation of high-quality plots, including quality summaries, taxonomic distributions, and other analytical outputs.

Together, these tools support a reproducible and interpretable analysis of sequence data, from raw reads to biological insight.

---

## ⚙️ Main Features
- Quality Control (FastQC, MultiQC)
- Sequence Alignment (BWA, Bowtie2)
- Taxonomic Identification (Kraken2, MEGAN)
- Workflow Reproducibility (Snakemake, Nextflow)
- Data Visualization (R, ggplot2)

---

## 👩‍🔬 Collaborators

| Name | Role | GitHub |
|------|------|--------|
| **Melissa Ndombasi Bokuy** | QC Module | [@melinbo](https://github.com/melinbo) |
| **Viktor Porvaznik** | Taxonomy | [porvik](https://github.com/porvik) |
| **Jose Iglesias Moure** | Alignment | [@Xose1999](https://github.com/Xose1999) |
| **Lydia Alvarez Erviti** | Visualization | [@laerviti](https://github.com/laerviti)|
| **Maria del Mar Rodriguez Ruiz** | Documentation | [@marrr87](https://github.com/marrr87) |


---

## 📝 Notes
- Use **feature branches** for development.  
- Commit messages should be *concise and descriptive*.  
- Pull requests must include a **summary and screenshots** when relevant.

## 📄 License

This project is released under the [GNU General Public License v3.0](LICENSE).
