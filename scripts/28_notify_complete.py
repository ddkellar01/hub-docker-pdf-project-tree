import datetime

def send_notification():
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] Pipeline execution successfully finished.")

if __name__ == "__main__":
    send_notification()
  
