#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  8 12:34:34 2017

@author: brenomacedo
"""
from tkinter import *
import tkinter as tk
from tkinter import tix
from tkinter import messagebox, Label, Button, FALSE, Tk, Entry, OptionMenu, StringVar
import tkinter.messagebox
from tkinter.ttk import Notebook
import os
import csv

class windowclass():

        def __init__(self,master):
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Mopa")
                self.lbl = Label(master , text = "Escolha sua opção:")
                self.lbl.pack()
                self.btn1 = Button(master , text = "Cadastrar Digital" , command = self.command3 )
                self.btn1.pack()
                self.btn2 = Button(master , text = "Cadastrar Novo Usuário" , command = self.command2 )
                self.btn2.pack()
                self.btn3 = Button(master , text = "Liberar Por Senha" , command = self.command1 )
                self.btn3.pack()
                self.frame.pack()

        def command1(self):
                

                self.newWindow = tk.Toplevel(self.master)
                self.app = windowclass1(self.newWindow)
        
        def command2(self):

                self.newWindow = tk.Toplevel(self.master)
                self.app = windowclass2(self.newWindow)
                
        def command3(self):

                self.newWindow = tk.Toplevel(self.master)
                self.app = windowclass3(self.newWindow)
 

class windowclass1():

        def __init__(self , master):
                
                self.username = ("goi") #Pegar do BD
                self.password = ("123")
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Login")
                self.username_text = Label(master, text="Usuário:")
                self.username_guess = Entry(master)
                self.password_text = Label(master, text="Senha:")
                self.password_guess = Entry(master, show="*")
                self.quitButton = tk.Button(self.frame, text = 'Cancelar', width = 25 , command = self.close_window)
                self.attempt_login = tk.Button(self.frame, text='Login', width = 25, command= self.try_login)
                self.username_text.pack()
                self.username_guess.pack()
                self.password_text.pack()
                self.password_guess.pack()
                self.quitButton.pack()
                self.attempt_login.pack()
                self.frame.pack()

        def try_login(self):
            #self.username = ("goi")
            #self.password = ("123")
                if self.username_guess.get() == self.username:
                    self.newWindow = tk.Toplevel(self.master)
                    self.app = windowclass4(self.newWindow)
                else:
                    messagebox.showinfo("Erro", "Não Reconhecido", icon="warning")
                    
        def close_window(self):
                self.master.destroy()
 
class MyOptionMenu(tk.OptionMenu):
        def __init__(self, master, status, *options):
                self.var = StringVar(master)
                self.var.set(status)
                OptionMenu.__init__(self, master, self.var, *options)
               
class windowclass2():
    
       
    
        def __init__(self , master):
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Cadastro")
                # Cria o label e a caixa de texto para o Nome
                self.username_text = Label(master, text="Nome:")
                self.username_guess = Entry(master)
                self.posto = Label(master, text="Posto:")
                self.mymenu1 = MyOptionMenu(self.frame, 'Select status', 'General','Coronel','Tenente-Coronel', 'Major', 'Capitão', '1º Tenente', '2º Tenente', 'Cadete', 'Sargento', 'Soldado')
                self.password_text = Label(master, text="OM:")
                self.password_guess = Entry(master)
                self.quitButton = tk.Button(self.frame, text = 'Cancelar', width = 25 , command = self.close_window)
                self.attempt_login = tk.Button(self.frame, text='Cadastrar', width = 25, command= self.try_login)
                self.username_text.pack()
                self.username_guess.pack()
                
                self.mymenu1.pack()
                self.password_text.pack()
                self.password_guess.pack()
                self.posto.pack()
                self.quitButton.pack()
                self.attempt_login.pack()
                self.frame.pack()
                
       # def MyOptionMenu(OptionMenu):
        #        self.var = StringVar(master)
         #       self.var.set(status)
          #      OptionMenu.__init__(self, master, self.var, *options)
        
        def try_login(self):
                self.newWindow = tk.Toplevel(self.master)
                self.app = windowclass3(self.newWindow)


        def close_window(self):
                self.master.destroy()
                
                
class windowclass3():


        def __init__(self , master):
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Cadastre sua Digital")
                self.lbl = Label(master , text = "Cadastrar:")
                self.lbl.pack()
                self.lbl2 = Label(master , text = "(Descobrir como cadastrar digital aqui)")
                self.lbl2.pack()
                self.quitButton = tk.Button(self.frame, text = 'Cancelar', width = 25 , command = self.close_window)
                self.quitButton1 = tk.Button(self.frame, text = '3a opção', width = 25 , command = self.close_window1)
                self.quitButton2 = tk.Button(self.frame, text = '4a opção', width = 25 , command = self.close_window2)
                self.attempt_login = tk.Button(self.frame, text='Cadastrar', width = 25, command= self.try_login)
                self.quitButton.pack()
                self.attempt_login.pack()
                self.quitButton1.pack()
                self.quitButton2.pack()
                self.frame.pack()
                
        def try_login(self):
                messagebox.showinfo("Sucesso", "Usuário Cadastrado", icon="info")    
            
        def close_window(self):
                self.master.destroy()
                
        def close_window1(self):
                messagebox.showinfo("Erro", "Não Reconhecido", icon="warning")
                
        def close_window2(self):
                messagebox.showinfo("Erro", "Usuário não encontrado", icon="error")
                
class windowclass4():


        def __init__(self , master):
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Cadastre Evento")
                self.lbl = Label(master , text = "Escolher Militar:")
                self.mymenu1 = MyOptionMenu(self.frame, 'Select status', 'mickey', 'donald', 'luizinho', 'jorginho')
                self.lbl.pack()
                
                self.mymenu1.pack()
                
                self.quitButton = tk.Button(self.frame, text = 'Cancelar', width = 25 , command = self.close_window)
                self.attempt_login = tk.Button(self.frame, text='Cadastrar Evento do Militar', width = 25, command= self.try_login)
                self.quitButton.pack()
                self.attempt_login.pack()
                self.frame.pack()
                
        def try_login(self):
                messagebox.showinfo("Sucesso", "Evento Cadastrado", icon="info")    
            
        def close_window(self):
                self.master.destroy()
       
    
class windowclass5():
    
    
        def __init__(self , master):
                self.master = master
                self.frame = tk.Frame(master)
                master.title("Buscar")
                self.username_text = Label(master, text="Buscar:")
                self.username_text.pack()
                self.mymenu1 = MyOptionMenu(self.frame, 'Select status', 'mickey', 'donald', 'luizinho', 'jorginho')
                self.mymenu1.pack()
                self.frame.pack()

root = Tk()

root.title("window")

root.geometry("800x750")

cls = windowclass(root)

root.mainloop()
    