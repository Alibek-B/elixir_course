# EchoServer

**
des**

## between two local processes
```
server_pid = EchoServer.start

EchoServer.ping(server_pid)
```

## between two nodes

```
Node.connect(:"node")

node_pid = Node.spawn_link(:"node", EchoServer, :start, [])

EchoServer.ping(node_pid)
```
