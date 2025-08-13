echo "Press any key...for begin with npm install..."; read -s -n 1
npm install --force --legacy-peer-deps
echo "Press any key to...npm run build"; read -s -n 1
NODE_OPTIONS=--max_old_space_size=4096  npm run build
echo "Press any key to...install backend requirements"; read -s -n 1
cd backend
pip install -r requirements.txt -U --break-system-packages
echo "Rebuild ended...Press any key to continue..."; read -s -n 1
