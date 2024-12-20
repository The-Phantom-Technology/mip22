rm -rf /opt/PHANTX/mip22

cd /opt/PHANTX

git clone https://github.com/makdosx/mip22.git

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi
cd /opt/mip22

bash mip22.sh

cp -Rf mip22 /opt/PHANTX/bin

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/mip22
rm -rf /opt/PHOS/tool/mip22