%%
clc;
clear all;
close all;

%% Graphic
g = ncgr_graphic();

global N_DOFS;
N_DOFS = 7;

%% 6-R 2020 Arm DH-Parameters
theta = [0 0 0 0 0 0 0];
alpha = [0 pi/2 0 0 -pi/2 -pi/2 0];
offset = [0 pi/2 -pi/2 0 -pi/2 0 0];
d = [0 100 0 0 105 0 305];
a = [0 0 520 495 0 0 0];
type = ['r','r','r','r','r','r','r'];
base = [0; 0; 0];

planar_6r = cgr_create(theta, d, a, alpha, offset, type, base, ...
    [-pi; -pi; -pi; -pi; -pi; -pi; -pi], [pi; pi; pi; pi; pi; pi; pi]);  % joint limts!
planar_6r = cgr_self_update(planar_6r, [0; 0; 0; 0; 0; 0; 0], base);
g = ncgr_plot(g, planar_6r, [1 1 1], 1);
