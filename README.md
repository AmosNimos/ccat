# ccat
ccat is a bash script that provides color options for the cat command.

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
    <h1>ccat - Colorful Cat Command</h1>
    <p>ccat is a bash script that provides color options for the <code>cat</code> command.</p>
    <h2>Installation</h2>
    <p>To use ccat, simply download the <code>ccat.sh</code> script and make it executable:</p>
    <pre><code>wget https://github.com/amosnimos/ccat/blob/main/ccat.sh
    chmod +x ccat.sh</code></pre>
    <Clone the repository>
    If you prefer to use git to obtain the script, you can clone the repository using the following command:
    <pre>
    git clone https://github.com/AmosNimos/ccat.git
    </pre>
    <p>
    This will create a local copy of the repository in a directory named ccat.
    You will then need to make the script executable before you can use it.
    </p>
    <h2>Usage</h2>
    <p>To use ccat, run the script followed by the name of the file you want to display:</p>
    <pre><code>./ccat.sh file.txt</code></pre>
    <p>ccat also provides two options:</p>
    <ul>
      <li><code>-C COLOR</code>: set the color of the text (red, green, yellow, blue, magenta, or cyan)</li>
      <li><code>-F FILE</code>: display the contents of FILE instead of the default file</li>
    </ul>
    <p>To display the contents of <code>file.txt</code> in green:</p>
    <pre><code>./ccat.sh -C green file.txt</code></pre>
    <p>To display the contents of <code>file2.txt</code> in blue:</p>
    <pre><code>./ccat.sh -C blue -F file2.txt</code></pre>
    <h2>License</h2>
    <p>ccat is licensed under the MIT License. See the <a href="https://github.com/amosnimos/ccat/blob/main/LICENSE">LICENSE</a> file for details.</p>
    <h2>Author</h2>
    <p>ccat was created by amosnimos. See the <a href="https://github.com/amosnimos">GitHub profile</a> for more information.</p>
  </body>
</html>
