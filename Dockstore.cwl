class: CommandLineTool
doc: FastQC
id: fastqc-0.11.4
label: "FastQC v0.11.4"

cwlVersion: v1.0

dct:creator:
  foaf:name: Anish Chakka
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

outputs:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
    glob: .

baseCommand: ["fastqc"]
