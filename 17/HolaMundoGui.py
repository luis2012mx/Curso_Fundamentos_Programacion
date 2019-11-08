from tkinter import *

def mostrar():
    textoLabel.grid_forget()
    botonOk.grid_forget()
    botonNo.grid_forget()

    msg1=Label(miframe, text="Hola Chica")
    msg1.config(font=("Comic Sans MS", 20))
    msg1.grid(row=1, column=0, padx=10, pady=10)

    msg2=Label(miframe, text="Hola Mundo")
    msg2.config(font=("Comic Sans MS", 20))
    msg2.grid(row=1, column=1, padx=10, pady=10)

    mujer.grid(row=0, column=0, padx=10, pady=10)
    mundo.grid(row=0, column=1, padx=10, pady=10)
pass

def negacion():
    textoLabel.grid_forget()
    botonOk.grid_forget()
    botonNo.grid_forget()

    msg3=Label(miframe, text="Talvez en otra ocacion")
    msg3.config(font=("Comic Sans MS", 20))
    msg3.grid(row=0, column=0, padx=30, pady=30)
    triste.grid(row=1, column=0, padx=10, pady=10)

pass

raiz = Tk()
raiz.title("Hola Mundo GUI")
raiz.iconbitmap("w.ico")

miframe=Frame(raiz, width=800, height=1200)
miframe.config(bg="gray")
miframe.pack()

textoLabel=Label(miframe, text="¿Desea ver algo bonito?")
textoLabel.config(font=("Comic Sans MS", 20))
textoLabel.grid(row=0, column=1, padx=10, pady=10)

botonOk=Button(miframe, text="Si", command=mostrar)
botonOk.config(font=("Comic Sans MS", 16))
botonOk.grid(row=1, column=1, sticky="e", padx=10, pady=10)

botonNo=Button(miframe, text="No", command=negacion)
botonNo.config(font=("Comic Sans MS", 16))
botonNo.grid(row=1, column=1, sticky="w", padx=10, pady=10)

imgMujer=PhotoImage(file="mujer.png")
mujer=Label(miframe, image=imgMujer)

imgMundo=PhotoImage(file="mundo.gif")
mundo=Label(miframe, image=imgMundo)

imgTriste=PhotoImage(file="triste.png")
triste=Label(miframe, image=imgTriste)


raiz.mainloop()
