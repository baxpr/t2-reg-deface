#!/usr/bin/env bash
#
# Register a T2 to a T1.
#
# Use the non-zero voxels of FACE/img.face.nii.gz output of reface_v1
# to mask out the face part of a T2.

t1=INPUTS/t1.nii.gz
t2=INPUTS/t2.nii.gz
face=INPUTS/face.nii.gz
out_dir=OUTPUTS

echo "Registering T2 to T1"
flirt -in "${t2}" -ref "${t1}" -out "${out_dir}"/t2_to_t1 -usesqform -noresample
    
