require 'nokogiri'  

doc = Nokogiri.XML(File.open(ARGV[0], "r"))

(doc / "ParallelsVirtualMachine > Hardware > Sound").remove
# Remove all Shared Folders created by Veewee, since a Vagrant
# box does not need all the folders that are mapped automatically.
# 
# XML keys:
# Settings / Tools / SharedProfile,
#                  / SharedApplications,
#                  / SharedFolders
#                     / GuestSharing
#                     / HostSharing
#
tools = (doc / "Settings > Tools")

(tools / "SharedProfile").children.each do |s|
  s.content = 0
end

# Disable HostSharing
(tools / "SharedFolders > HostSharing").each do |s|
  s.content = 0
end
# And GuestSharing
(tools / "SharedFolders > GuestSharing").each do |s|
  s.content = 0
end

# Disable app sync
apps = (tools / "SharedApplications")
(apps / "FromWinToMac").first.content = 0 
(apps / "FromMacToWin").first.content = 0 

# Disable clipboard sync/other sync
(tools / "ClipboardSync > Enabled").first.content = 0
(tools / "DragAndDrop > Enabled").first.content = 0

# Disable all shared drives
(tools / "SharedVolumes > Enabled").first.content = 0

File.open(ARGV[0], "w") do |f|
  doc.write_xml_to(f)
end
