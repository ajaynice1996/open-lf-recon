#!/bin/bash

# Root folders
mkdir -p configs/{data,training,models,pipelines}
mkdir -p data/{raw/{LF,HF},processed,splits}
mkdir -p src/{data,models,training,inference,pipelines,evaluation,utils}
mkdir -p scripts notebooks experiments/{exp_denoising,exp_srr,exp_full_pipeline}
mkdir -p outputs/{checkpoints,logs,predictions,reports}
mkdir -p tests

# Models submodules
mkdir -p src/models/{denoising,super_resolution,artifact_reduction,domain_adaptation,segmentation}

# Create __init__.py everywhere (Python package structure)
find src -type d -exec touch {}/__init__.py \;

# Core files
touch README.md LICENSE requirements.txt .gitignore setup.py

# Config files
touch configs/data/data.yaml
touch configs/training/train.yaml
touch configs/models/{denoise.yaml,srr.yaml,domain.yaml}
touch configs/pipelines/full_pipeline.yaml

# Data module
touch src/data/{loader.py,preprocessing.py,transforms.py,registration.py}

# Models
touch src/models/base_model.py
touch src/models/denoising/{classical.py,unet.py,diffusion.py}
touch src/models/super_resolution/{srr_unet.py,edsr.py,physics_informed.py}
touch src/models/artifact_reduction/artifact_net.py
touch src/models/domain_adaptation/{cycleGAN.py,feature_alignment.py}
touch src/models/segmentation/synthseg_wrapper.py

# Training
touch src/training/{trainer.py,losses.py,metrics.py,callbacks.py}

# Inference
touch src/inference/{infer_denoise.py,infer_srr.py,infer_pipeline.py,postprocess.py}

# Pipelines
touch src/pipelines/{classical_pipeline.py,deep_pipeline.py,full_pipeline.py}

# Evaluation
touch src/evaluation/{metrics_recon.py,metrics_seg.py,volumetry.py}

# Utils
touch src/utils/{io.py,visualization.py,logging.py,config.py}

# Scripts
touch scripts/{train_denoise.sh,train_srr.sh,train_domain_adapt.sh,run_pipeline.sh,evaluate.sh}

# Notebooks
touch notebooks/{01_data_exploration.ipynb,02_preprocessing.ipynb,03_model_training.ipynb,04_inference_pipeline.ipynb}

# Experiments placeholders
touch experiments/exp_denoising/README.md
touch experiments/exp_srr/README.md
touch experiments/exp_full_pipeline/README.md

# Outputs placeholders
touch outputs/checkpoints/.gitkeep
touch outputs/logs/.gitkeep
touch outputs/predictions/.gitkeep
touch outputs/reports/.gitkeep

# Tests
touch tests/{test_data.py,test_models.py,test_pipeline.py}

echo "✅ open-lf-recon structure created successfully!"
