# glorfster-overlay
## Using with layman
Create file `/etc/layman/overlays/glorfster.xml` with the following content:
```xml
<?xml version="1.0" ?>

<repositories version="1.0">
	<repo priority="50" quality="experimental" status="unofficial">
		<name>glorfster-overlay</name>
		<description>glorfster</description>
		<homepage>https://github.com/glorfster/glorfster-overlay</homepage>
		<owner>
			<email>glorfster@gmail.org</email>
		</owner>
		<source type="git">https://github.com/glorfster/glorfster-overlay.git</source>
	</repo>
</repositories>
```
