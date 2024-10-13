# run.py
from app import app

if __name__ == '__main__':
    # Pastikan debug=True saat mode development
    app.run(debug=True)
