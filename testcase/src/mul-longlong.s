
mul-longlong:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 59 00 00 00       	jmp    3005e <main>

00030005 <mul>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	83 ec 20             	sub    $0x20,%esp
   3000b:	e8 3c 01 00 00       	call   3014c <__x86.get_pc_thunk.ax>
   30010:	05 f0 1f 00 00       	add    $0x1ff0,%eax
   30015:	8b 45 08             	mov    0x8(%ebp),%eax
   30018:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3001b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3001e:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30021:	8b 45 10             	mov    0x10(%ebp),%eax
   30024:	89 45 e0             	mov    %eax,-0x20(%ebp)
   30027:	8b 45 14             	mov    0x14(%ebp),%eax
   3002a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3002d:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30030:	0f af 45 e0          	imul   -0x20(%ebp),%eax
   30034:	89 c2                	mov    %eax,%edx
   30036:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   30039:	0f af 45 e8          	imul   -0x18(%ebp),%eax
   3003d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   30040:	8b 45 e0             	mov    -0x20(%ebp),%eax
   30043:	f7 65 e8             	mull   -0x18(%ebp)
   30046:	01 d1                	add    %edx,%ecx
   30048:	89 ca                	mov    %ecx,%edx
   3004a:	89 45 f8             	mov    %eax,-0x8(%ebp)
   3004d:	89 55 fc             	mov    %edx,-0x4(%ebp)
   30050:	89 45 f8             	mov    %eax,-0x8(%ebp)
   30053:	89 55 fc             	mov    %edx,-0x4(%ebp)
   30056:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30059:	8b 55 fc             	mov    -0x4(%ebp),%edx
   3005c:	c9                   	leave  
   3005d:	c3                   	ret    

0003005e <main>:
   3005e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   30062:	83 e4 f8             	and    $0xfffffff8,%esp
   30065:	ff 71 fc             	pushl  -0x4(%ecx)
   30068:	55                   	push   %ebp
   30069:	89 e5                	mov    %esp,%ebp
   3006b:	57                   	push   %edi
   3006c:	56                   	push   %esi
   3006d:	53                   	push   %ebx
   3006e:	51                   	push   %ecx
   3006f:	83 ec 20             	sub    $0x20,%esp
   30072:	e8 d9 00 00 00       	call   30150 <__x86.get_pc_thunk.si>
   30077:	81 c6 89 1f 00 00    	add    $0x1f89,%esi
   3007d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   30084:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   3008b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   30092:	e9 86 00 00 00       	jmp    3011d <main+0xbf>
   30097:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3009a:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3009d:	eb 73                	jmp    30112 <main+0xb4>
   3009f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   300a2:	8d 50 01             	lea    0x1(%eax),%edx
   300a5:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   300a8:	8b 94 c6 44 00 00 00 	mov    0x44(%esi,%eax,8),%edx
   300af:	8b 84 c6 40 00 00 00 	mov    0x40(%esi,%eax,8),%eax
   300b6:	89 45 d0             	mov    %eax,-0x30(%ebp)
   300b9:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   300bc:	8b 45 e8             	mov    -0x18(%ebp),%eax
   300bf:	8b 84 86 20 00 00 00 	mov    0x20(%esi,%eax,4),%eax
   300c6:	89 c1                	mov    %eax,%ecx
   300c8:	89 c3                	mov    %eax,%ebx
   300ca:	c1 fb 1f             	sar    $0x1f,%ebx
   300cd:	8b 45 ec             	mov    -0x14(%ebp),%eax
   300d0:	8b 84 86 20 00 00 00 	mov    0x20(%esi,%eax,4),%eax
   300d7:	99                   	cltd   
   300d8:	53                   	push   %ebx
   300d9:	51                   	push   %ecx
   300da:	52                   	push   %edx
   300db:	50                   	push   %eax
   300dc:	e8 24 ff ff ff       	call   30005 <mul>
   300e1:	83 c4 10             	add    $0x10,%esp
   300e4:	8b 4d d0             	mov    -0x30(%ebp),%ecx
   300e7:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
   300ea:	89 cf                	mov    %ecx,%edi
   300ec:	31 c7                	xor    %eax,%edi
   300ee:	89 7d d8             	mov    %edi,-0x28(%ebp)
   300f1:	89 d0                	mov    %edx,%eax
   300f3:	31 d8                	xor    %ebx,%eax
   300f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
   300f8:	8b 55 d8             	mov    -0x28(%ebp),%edx
   300fb:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   300fe:	89 c8                	mov    %ecx,%eax
   30100:	09 d0                	or     %edx,%eax
   30102:	85 c0                	test   %eax,%eax
   30104:	74 06                	je     3010c <main+0xae>
   30106:	b8 01 00 00 00       	mov    $0x1,%eax
   3010b:	82 ff 45             	cmp    $0x45,%bh
   3010e:	e0 ff                	loopne 3010f <main+0xb1>
   30110:	45                   	inc    %ebp
   30111:	e8 8b 45 e8 83       	call   83eb46a1 <__bss_start+0x83e82611>
   30116:	f8                   	clc    
   30117:	03 76 85             	add    -0x7b(%esi),%esi
   3011a:	ff 45 ec             	incl   -0x14(%ebp)
   3011d:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30120:	83 f8 03             	cmp    $0x3,%eax
   30123:	0f 86 6e ff ff ff    	jbe    30097 <main+0x39>
   30129:	83 7d e0 0a          	cmpl   $0xa,-0x20(%ebp)
   3012d:	74 06                	je     30135 <main+0xd7>
   3012f:	b8 01 00 00 00       	mov    $0x1,%eax
   30134:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   3013b:	b8 00 00 00 00       	mov    $0x0,%eax
   30140:	8d 65 f0             	lea    -0x10(%ebp),%esp
   30143:	59                   	pop    %ecx
   30144:	5b                   	pop    %ebx
   30145:	5e                   	pop    %esi
   30146:	5f                   	pop    %edi
   30147:	5d                   	pop    %ebp
   30148:	8d 61 fc             	lea    -0x4(%ecx),%esp
   3014b:	c3                   	ret    

0003014c <__x86.get_pc_thunk.ax>:
   3014c:	8b 04 24             	mov    (%esp),%eax
   3014f:	c3                   	ret    

00030150 <__x86.get_pc_thunk.si>:
   30150:	8b 34 24             	mov    (%esp),%esi
   30153:	c3                   	ret    
