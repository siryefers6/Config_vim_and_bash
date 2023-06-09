import os

# Comando para crear una sesión de Tmux con nombre "passivbot_siryefers"
os.system('tmux new-session -s passivbot_siryefers -d')

# Lista con los nombres de las ventanas que deseas crear
window_names = ['principal', 'siryefersStandar', 'siryefers3', 'siryefers4', 'siryefers5', 'siryefers6', 'siryefers7', 'siryefers8', 'siryefers9', 'siryefers10']

# Recorrer la lista de nombres de ventana y ejecutar los comandos para crearlas
for window_name in window_names:
    # Comando para crear una nueva ventana en la sesión con el nombre especificado
    os.system(f'tmux new-window -t passivbot_siryefers -n {window_name}')
    # Dar tiempo para que se cree la ventana antes de ejecutar el siguiente comando
    os.system('sleep 0.1')
    # Comando para dividir la ventana en dos paneles horizontales y tres verticales
    os.system('tmux split-window -v')
    os.system('tmux split-window -v')
    os.system('tmux split-window -v')
    os.system('tmux select-pane -t 0')
    os.system('tmux split-window -h')
    os.system('tmux split-window -h')
    os.system('tmux select-pane -t 3')
    os.system('tmux split-window -h')
    os.system('tmux split-window -h')
    os.system('tmux select-pane -t 6')
    os.system('tmux split-window -h')
    os.system('tmux split-window -h')
    os.system('tmux select-pane -t 9')
    os.system('tmux split-window -h')
    os.system('tmux split-window -h')
    os.system('tmux select-layout tiled')
    # Dar tiempo para que se dividan los paneles antes de ejecutar el siguiente comando
    os.system('sleep 0.1')

    for i in range(12):
        os.system(f'tmux select-pane -t {i}')
        os.system('tmux send-keys "source venv/bin/activate && clear" C-m')