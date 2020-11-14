#!/usr/bin/env sh

glslc shaders/shader.frag -o src/frag.spv
glslc shaders/shader.vert -o src/vert.spv
