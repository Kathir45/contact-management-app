# Quick Start Guide

## Prerequisites Check
- [ ] Node.js installed
- [ ] MongoDB installed
- [ ] MongoDB service running

## Start MongoDB (if not running)
```powershell
net start MongoDB
```

## Method 1: Automated Start (Recommended)
Double-click `START.bat` file in the root directory. This will:
1. Start the backend server (port 5000)
2. Start the frontend server (port 3000)
3. Open the app in your browser automatically

## Method 2: Manual Start

### Terminal 1 - Backend:
```powershell
cd backend
npm start
```

### Terminal 2 - Frontend:
```powershell
cd frontend
npm start
```

## Access the Application
Open your browser and go to: **http://localhost:3000**

## Test the App
1. Fill in the contact form (Name, Email, Phone are required)
2. Click "Add Contact" button
3. See your contact appear in the list immediately
4. Try sorting contacts by Newest, Oldest, or Name
5. Delete a contact by clicking the delete button
6. Try form validation by entering invalid data

## API Testing (Optional)
You can test the API directly using curl or Postman:

### Get all contacts:
```powershell
curl http://localhost:5000/api/contacts
```

### Create a contact:
```powershell
curl -X POST http://localhost:5000/api/contacts -H "Content-Type: application/json" -d '{\"name\":\"Test User\",\"email\":\"test@example.com\",\"phone\":\"1234567890\",\"message\":\"Hello\"}'
```

## Stopping the Application
Press `Ctrl + C` in each terminal window where the servers are running.

## Troubleshooting

### MongoDB not running?
```powershell
net start MongoDB
```

### Port already in use?
- Backend: Change PORT in backend/.env
- Frontend: It will prompt you to use a different port

### CORS errors?
Make sure both servers are running on the correct ports (5000 and 3000).

---
For detailed documentation, see README.md
