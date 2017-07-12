class: CommnadLineTool
doc: FastQC
id: fastqc-0.11.4
label: "FastQC v0.11.4"

cwlVersion: v1.0

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Daniel Standage
  foaf:mbox: "mailto:anibhax@gmail.com"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/anishbhaswanth/fastqc:latest"
hints:
  - class: ResourceRequirement
    coresMin: 1
    ramMin: 1000

inputs:
  fastq:
    type: File
    doc: "Fastq file to be analyzed"
    inputBinding:
      position: 1

output:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
    glob: .

