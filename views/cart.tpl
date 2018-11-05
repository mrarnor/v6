<!DOCTYPE html>
<html>
    <head>
        <title>cart</title>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scaled=1">
        <link rel="stylesheet" type="text/css" href="/static/stylesheet.css">
    </head>
    <body>
    % from bottle import *
    % from beaker.middleware import SessionMiddleware
    % bs = request.environ.get("beaker.session")
    %empty = True

    <pre>cart empty</pre>

    % for i in range(6):
        % if bs.get(str(i)):
            % empty = False
        % end
    % end
    % if empty:
        <i>empty</i>
    % else:
    <table><tr><th>Storage -</th><th>Price -</th><th>Remove -</th>
        </tr>
            % sum = 0
            % for i in range(6):
                % if bs.get(str(i)):
                % sum = sum + int(cos[int(i)]["price"])
                <tr>
                    <td>{{cos[int(i)]['name']}}</td>
                    <td>{{cos[int(i)]['price']}}</td>
                    <td><a href="/del/{{i}}">radera</a></td>
                </tr>
            % end
        % end
                <tr>
                    <td>total price:</td>
                    <td>{{sum}} kr</td>
                    <td><a href="/delall">remove</a></td>
                </tr>
    </table>
    %end
    <h4>
        <a href="/">home</a>
    </h4>
    </body>
</html>
