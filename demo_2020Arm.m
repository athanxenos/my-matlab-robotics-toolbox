%%
clc;
clear all;
close all;

%% Graphic
g = ncgr_graphic();

global N_DOFS;
N_DOFS = 6;

%% 6-R 2020 Arm DH-Parameters
theta = [0 0 0 0 0 0];
alpha = [0 pi/2 0 0 -pi/2 -pi/2];
offset = [0 pi/2 -pi/2 0 -pi/2 0];
d = [0 0 0 0 110 0];
a = [0 0 650 415 0 0];
type = ['r','r','r','r','r','r'];
base = [0; 0; 0];

planar_6r = cgr_create(theta, d, a, alpha, offset, type, base, ...
    [-pi; -pi; -pi; -pi; -pi; -pi], [pi; pi; pi; pi; pi; pi]);  % joint limts!
planar_6r = cgr_self_update(planar_6r, [0; 0; 0; 0; 0; 0;], base);
g = ncgr_plot(g, planar_6r, [1 1 1], 1);
