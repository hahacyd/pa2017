
string:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   30009:	83 e4 f0             	and    $0xfffffff0,%esp
   3000c:	ff 71 fc             	pushl  -0x4(%ecx)
   3000f:	55                   	push   %ebp
   30010:	89 e5                	mov    %esp,%ebp
   30012:	57                   	push   %edi
   30013:	56                   	push   %esi
   30014:	53                   	push   %ebx
   30015:	51                   	push   %ecx
   30016:	83 ec 08             	sub    $0x8,%esp
   30019:	e8 5e 01 00 00       	call   3017c <__x86.get_pc_thunk.bx>
   3001e:	81 c3 e2 1f 00 00    	add    $0x1fe2,%ebx
   30024:	8b 93 1c 00 00 00    	mov    0x1c(%ebx),%edx
   3002a:	8b 83 14 00 00 00    	mov    0x14(%ebx),%eax
   30030:	83 ec 08             	sub    $0x8,%esp
   30033:	52                   	push   %edx
   30034:	50                   	push   %eax
   30035:	e8 96 02 00 00       	call   302d0 <strcmp>
   3003a:	83 c4 10             	add    $0x10,%esp
   3003d:	85 c0                	test   %eax,%eax
   3003f:	74 06                	je     30047 <main+0x42>
   30041:	b8 01 00 00 00       	mov    $0x1,%eax
   30046:	82 8b 93 18 00 00 00 	orb    $0x0,0x1893(%ebx)
   3004d:	8b 83 14 00 00 00    	mov    0x14(%ebx),%eax
   30053:	83 ec 08             	sub    $0x8,%esp
   30056:	52                   	push   %edx
   30057:	50                   	push   %eax
   30058:	e8 73 02 00 00       	call   302d0 <strcmp>
   3005d:	83 c4 10             	add    $0x10,%esp
   30060:	83 f8 ff             	cmp    $0xffffffff,%eax
   30063:	74 06                	je     3006b <main+0x66>
   30065:	b8 01 00 00 00       	mov    $0x1,%eax
   3006a:	82 8b 83 18 00 00 00 	orb    $0x0,0x1883(%ebx)
   30071:	8d 50 01             	lea    0x1(%eax),%edx
   30074:	8b 83 14 00 00 00    	mov    0x14(%ebx),%eax
   3007a:	40                   	inc    %eax
   3007b:	83 ec 08             	sub    $0x8,%esp
   3007e:	52                   	push   %edx
   3007f:	50                   	push   %eax
   30080:	e8 4b 02 00 00       	call   302d0 <strcmp>
   30085:	83 c4 10             	add    $0x10,%esp
   30088:	83 f8 ff             	cmp    $0xffffffff,%eax
   3008b:	74 06                	je     30093 <main+0x8e>
   3008d:	b8 01 00 00 00       	mov    $0x1,%eax
   30092:	82 8b 83 18 00 00 00 	orb    $0x0,0x1883(%ebx)
   30099:	8d 50 02             	lea    0x2(%eax),%edx
   3009c:	8b 83 14 00 00 00    	mov    0x14(%ebx),%eax
   300a2:	83 c0 02             	add    $0x2,%eax
   300a5:	83 ec 08             	sub    $0x8,%esp
   300a8:	52                   	push   %edx
   300a9:	50                   	push   %eax
   300aa:	e8 21 02 00 00       	call   302d0 <strcmp>
   300af:	83 c4 10             	add    $0x10,%esp
   300b2:	83 f8 ff             	cmp    $0xffffffff,%eax
   300b5:	74 06                	je     300bd <main+0xb8>
   300b7:	b8 01 00 00 00       	mov    $0x1,%eax
   300bc:	82 8b 83 18 00 00 00 	orb    $0x0,0x1883(%ebx)
   300c3:	8d 50 03             	lea    0x3(%eax),%edx
   300c6:	8b 83 14 00 00 00    	mov    0x14(%ebx),%eax
   300cc:	83 c0 03             	add    $0x3,%eax
   300cf:	83 ec 08             	sub    $0x8,%esp
   300d2:	52                   	push   %edx
   300d3:	50                   	push   %eax
   300d4:	e8 f7 01 00 00       	call   302d0 <strcmp>
   300d9:	83 c4 10             	add    $0x10,%esp
   300dc:	83 f8 ff             	cmp    $0xffffffff,%eax
   300df:	74 06                	je     300e7 <main+0xe2>
   300e1:	b8 01 00 00 00       	mov    $0x1,%eax
   300e6:	82 8b b3 24 00 00 00 	orb    $0x0,0x24b3(%ebx)
   300ed:	8b bb 20 00 00 00    	mov    0x20(%ebx),%edi
   300f3:	83 ec 08             	sub    $0x8,%esp
   300f6:	8d 83 0c 00 00 00    	lea    0xc(%ebx),%eax
   300fc:	50                   	push   %eax
   300fd:	c7 c0 2c 20 03 00    	mov    $0x3202c,%eax
   30103:	50                   	push   %eax
   30104:	e8 37 02 00 00       	call   30340 <strcpy>
   30109:	83 c4 10             	add    $0x10,%esp
   3010c:	83 ec 08             	sub    $0x8,%esp
   3010f:	57                   	push   %edi
   30110:	50                   	push   %eax
   30111:	e8 4a 01 00 00       	call   30260 <strcat>
   30116:	83 c4 10             	add    $0x10,%esp
   30119:	83 ec 08             	sub    $0x8,%esp
   3011c:	56                   	push   %esi
   3011d:	50                   	push   %eax
   3011e:	e8 ad 01 00 00       	call   302d0 <strcmp>
   30123:	83 c4 10             	add    $0x10,%esp
   30126:	85 c0                	test   %eax,%eax
   30128:	74 06                	je     30130 <main+0x12b>
   3012a:	b8 01 00 00 00       	mov    $0x1,%eax
   3012f:	82 8b b3 28 00 00 00 	orb    $0x0,0x28b3(%ebx)
   30136:	83 ec 04             	sub    $0x4,%esp
   30139:	6a 05                	push   $0x5
   3013b:	6a 23                	push   $0x23
   3013d:	c7 c0 2c 20 03 00    	mov    $0x3202c,%eax
   30143:	50                   	push   %eax
   30144:	e8 89 00 00 00       	call   301d2 <memset>
   30149:	83 c4 10             	add    $0x10,%esp
   3014c:	83 ec 04             	sub    $0x4,%esp
   3014f:	6a 05                	push   $0x5
   30151:	56                   	push   %esi
   30152:	50                   	push   %eax
   30153:	e8 28 00 00 00       	call   30180 <memcmp>
   30158:	83 c4 10             	add    $0x10,%esp
   3015b:	85 c0                	test   %eax,%eax
   3015d:	74 06                	je     30165 <main+0x160>
   3015f:	b8 01 00 00 00       	mov    $0x1,%eax
   30164:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   3016b:	b8 00 00 00 00       	mov    $0x0,%eax
   30170:	8d 65 f0             	lea    -0x10(%ebp),%esp
   30173:	59                   	pop    %ecx
   30174:	5b                   	pop    %ebx
   30175:	5e                   	pop    %esi
   30176:	5f                   	pop    %edi
   30177:	5d                   	pop    %ebp
   30178:	8d 61 fc             	lea    -0x4(%ecx),%esp
   3017b:	c3                   	ret    

0003017c <__x86.get_pc_thunk.bx>:
   3017c:	8b 1c 24             	mov    (%esp),%ebx
   3017f:	c3                   	ret    

00030180 <memcmp>:
   30180:	55                   	push   %ebp
   30181:	89 e5                	mov    %esp,%ebp
   30183:	83 ec 10             	sub    $0x10,%esp
   30186:	53                   	push   %ebx
   30187:	57                   	push   %edi
   30188:	56                   	push   %esi
   30189:	8b 7d 08             	mov    0x8(%ebp),%edi
   3018c:	8b 75 0c             	mov    0xc(%ebp),%esi
   3018f:	8b 4d 10             	mov    0x10(%ebp),%ecx
   30192:	fc                   	cld    
   30193:	31 c0                	xor    %eax,%eax
   30195:	85 c9                	test   %ecx,%ecx
   30197:	74 31                	je     301ca <L4>
   30199:	89 f8                	mov    %edi,%eax
   3019b:	09 f0                	or     %esi,%eax
   3019d:	a8 03                	test   $0x3,%al
   3019f:	75 1b                	jne    301bc <BYTECMP>
   301a1:	89 cb                	mov    %ecx,%ebx
   301a3:	c1 e9 02             	shr    $0x2,%ecx
   301a6:	f3 a7                	repz cmpsl %es:(%edi),%ds:(%esi)
   301a8:	74 0d                	je     301b7 <L5>
   301aa:	83 ee 04             	sub    $0x4,%esi
   301ad:	83 ef 04             	sub    $0x4,%edi
   301b0:	b9 04 00 00 00       	mov    $0x4,%ecx
   301b5:	eb 05                	jmp    301bc <BYTECMP>

000301b7 <L5>:
   301b7:	83 e3 03             	and    $0x3,%ebx
   301ba:	89 d9                	mov    %ebx,%ecx

000301bc <BYTECMP>:
   301bc:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)

000301be <L3>:
   301be:	31 d2                	xor    %edx,%edx
   301c0:	8a 56 ff             	mov    -0x1(%esi),%dl
   301c3:	31 c0                	xor    %eax,%eax
   301c5:	8a 47 ff             	mov    -0x1(%edi),%al
   301c8:	29 d0                	sub    %edx,%eax

000301ca <L4>:
   301ca:	8d 65 e4             	lea    -0x1c(%ebp),%esp
   301cd:	5e                   	pop    %esi
   301ce:	5f                   	pop    %edi
   301cf:	5b                   	pop    %ebx
   301d0:	c9                   	leave  
   301d1:	c3                   	ret    

000301d2 <memset>:
   301d2:	55                   	push   %ebp
   301d3:	89 e5                	mov    %esp,%ebp
   301d5:	57                   	push   %edi
   301d6:	8b 7d 08             	mov    0x8(%ebp),%edi
   301d9:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   301dd:	8b 4d 10             	mov    0x10(%ebp),%ecx
   301e0:	fc                   	cld    
   301e1:	83 f9 10             	cmp    $0x10,%ecx
   301e4:	76 69                	jbe    3024f <memset+0x7d>
   301e6:	f7 c7 07 00 00 00    	test   $0x7,%edi
   301ec:	74 4c                	je     3023a <memset+0x68>
   301ee:	88 07                	mov    %al,(%edi)
   301f0:	47                   	inc    %edi
   301f1:	49                   	dec    %ecx
   301f2:	f7 c7 07 00 00 00    	test   $0x7,%edi
   301f8:	74 40                	je     3023a <memset+0x68>
   301fa:	88 07                	mov    %al,(%edi)
   301fc:	47                   	inc    %edi
   301fd:	49                   	dec    %ecx
   301fe:	f7 c7 07 00 00 00    	test   $0x7,%edi
   30204:	74 34                	je     3023a <memset+0x68>
   30206:	88 07                	mov    %al,(%edi)
   30208:	47                   	inc    %edi
   30209:	49                   	dec    %ecx
   3020a:	f7 c7 07 00 00 00    	test   $0x7,%edi
   30210:	74 28                	je     3023a <memset+0x68>
   30212:	88 07                	mov    %al,(%edi)
   30214:	47                   	inc    %edi
   30215:	49                   	dec    %ecx
   30216:	f7 c7 07 00 00 00    	test   $0x7,%edi
   3021c:	74 1c                	je     3023a <memset+0x68>
   3021e:	88 07                	mov    %al,(%edi)
   30220:	47                   	inc    %edi
   30221:	49                   	dec    %ecx
   30222:	f7 c7 07 00 00 00    	test   $0x7,%edi
   30228:	74 10                	je     3023a <memset+0x68>
   3022a:	88 07                	mov    %al,(%edi)
   3022c:	47                   	inc    %edi
   3022d:	49                   	dec    %ecx
   3022e:	f7 c7 07 00 00 00    	test   $0x7,%edi
   30234:	74 04                	je     3023a <memset+0x68>
   30236:	88 07                	mov    %al,(%edi)
   30238:	47                   	inc    %edi
   30239:	49                   	dec    %ecx
   3023a:	88 c4                	mov    %al,%ah
   3023c:	89 c2                	mov    %eax,%edx
   3023e:	c1 e2 10             	shl    $0x10,%edx
   30241:	09 d0                	or     %edx,%eax
   30243:	89 ca                	mov    %ecx,%edx
   30245:	c1 e9 02             	shr    $0x2,%ecx
   30248:	83 e2 03             	and    $0x3,%edx
   3024b:	f3 ab                	rep stos %eax,%es:(%edi)
   3024d:	89 d1                	mov    %edx,%ecx
   3024f:	f3 aa                	rep stos %al,%es:(%edi)
   30251:	8b 45 08             	mov    0x8(%ebp),%eax
   30254:	8d 65 fc             	lea    -0x4(%ebp),%esp
   30257:	5f                   	pop    %edi
   30258:	c9                   	leave  
   30259:	c3                   	ret    
   3025a:	66 90                	xchg   %ax,%ax
   3025c:	66 90                	xchg   %ax,%ax
   3025e:	66 90                	xchg   %ax,%ax

00030260 <strcat>:
   30260:	55                   	push   %ebp
   30261:	89 e5                	mov    %esp,%ebp
   30263:	56                   	push   %esi
   30264:	53                   	push   %ebx
   30265:	83 ec 10             	sub    $0x10,%esp
   30268:	8b 75 08             	mov    0x8(%ebp),%esi
   3026b:	f7 c6 03 00 00 00    	test   $0x3,%esi
   30271:	89 f2                	mov    %esi,%edx
   30273:	75 3e                	jne    302b3 <strcat+0x53>
   30275:	8b 16                	mov    (%esi),%edx
   30277:	8d 82 ff fe fe fe    	lea    -0x1010101(%edx),%eax
   3027d:	f7 d2                	not    %edx
   3027f:	21 d0                	and    %edx,%eax
   30281:	89 f2                	mov    %esi,%edx
   30283:	a9 80 80 80 80       	test   $0x80808080,%eax
   30288:	75 29                	jne    302b3 <strcat+0x53>
   3028a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   30290:	83 c2 04             	add    $0x4,%edx
   30293:	8b 1a                	mov    (%edx),%ebx
   30295:	8d 8b ff fe fe fe    	lea    -0x1010101(%ebx),%ecx
   3029b:	f7 d3                	not    %ebx
   3029d:	21 d9                	and    %ebx,%ecx
   3029f:	81 e1 80 80 80 80    	and    $0x80808080,%ecx
   302a5:	74 e9                	je     30290 <strcat+0x30>
   302a7:	eb 0a                	jmp    302b3 <strcat+0x53>
   302a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   302b0:	83 c2 01             	add    $0x1,%edx
   302b3:	80 3a 00             	cmpb   $0x0,(%edx)
   302b6:	75 f8                	jne    302b0 <strcat+0x50>
   302b8:	8b 45 0c             	mov    0xc(%ebp),%eax
   302bb:	89 14 24             	mov    %edx,(%esp)
   302be:	89 44 24 04          	mov    %eax,0x4(%esp)
   302c2:	e8 79 00 00 00       	call   30340 <strcpy>
   302c7:	83 c4 10             	add    $0x10,%esp
   302ca:	89 f0                	mov    %esi,%eax
   302cc:	5b                   	pop    %ebx
   302cd:	5e                   	pop    %esi
   302ce:	5d                   	pop    %ebp
   302cf:	c3                   	ret    

000302d0 <strcmp>:
   302d0:	55                   	push   %ebp
   302d1:	89 e5                	mov    %esp,%ebp
   302d3:	8b 45 08             	mov    0x8(%ebp),%eax
   302d6:	8b 55 0c             	mov    0xc(%ebp),%edx
   302d9:	53                   	push   %ebx
   302da:	89 c1                	mov    %eax,%ecx
   302dc:	09 d1                	or     %edx,%ecx
   302de:	83 e1 03             	and    $0x3,%ecx
   302e1:	75 17                	jne    302fa <strcmp+0x2a>
   302e3:	8b 08                	mov    (%eax),%ecx
   302e5:	3b 0a                	cmp    (%edx),%ecx
   302e7:	74 33                	je     3031c <strcmp+0x4c>
   302e9:	eb 0f                	jmp    302fa <strcmp+0x2a>
   302eb:	90                   	nop
   302ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   302f0:	3a 0a                	cmp    (%edx),%cl
   302f2:	75 0d                	jne    30301 <strcmp+0x31>
   302f4:	83 c0 01             	add    $0x1,%eax
   302f7:	83 c2 01             	add    $0x1,%edx
   302fa:	0f b6 08             	movzbl (%eax),%ecx
   302fd:	84 c9                	test   %cl,%cl
   302ff:	75 ef                	jne    302f0 <strcmp+0x20>
   30301:	0f b6 00             	movzbl (%eax),%eax
   30304:	0f b6 12             	movzbl (%edx),%edx
   30307:	5b                   	pop    %ebx
   30308:	5d                   	pop    %ebp
   30309:	29 d0                	sub    %edx,%eax
   3030b:	c3                   	ret    
   3030c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   30310:	83 c0 04             	add    $0x4,%eax
   30313:	83 c2 04             	add    $0x4,%edx
   30316:	8b 08                	mov    (%eax),%ecx
   30318:	3b 0a                	cmp    (%edx),%ecx
   3031a:	75 de                	jne    302fa <strcmp+0x2a>
   3031c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
   30322:	f7 d1                	not    %ecx
   30324:	21 cb                	and    %ecx,%ebx
   30326:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
   3032c:	74 e2                	je     30310 <strcmp+0x40>
   3032e:	31 c0                	xor    %eax,%eax
   30330:	5b                   	pop    %ebx
   30331:	5d                   	pop    %ebp
   30332:	c3                   	ret    
   30333:	66 90                	xchg   %ax,%ax
   30335:	66 90                	xchg   %ax,%ax
   30337:	66 90                	xchg   %ax,%ax
   30339:	66 90                	xchg   %ax,%ax
   3033b:	66 90                	xchg   %ax,%ax
   3033d:	66 90                	xchg   %ax,%ax
   3033f:	90                   	nop

00030340 <strcpy>:
   30340:	55                   	push   %ebp
   30341:	89 e5                	mov    %esp,%ebp
   30343:	8b 45 08             	mov    0x8(%ebp),%eax
   30346:	8b 55 0c             	mov    0xc(%ebp),%edx
   30349:	57                   	push   %edi
   3034a:	56                   	push   %esi
   3034b:	53                   	push   %ebx
   3034c:	89 c3                	mov    %eax,%ebx
   3034e:	09 d3                	or     %edx,%ebx
   30350:	89 c1                	mov    %eax,%ecx
   30352:	83 e3 03             	and    $0x3,%ebx
   30355:	75 39                	jne    30390 <strcpy+0x50>
   30357:	8b 1a                	mov    (%edx),%ebx
   30359:	89 d9                	mov    %ebx,%ecx
   3035b:	f7 d1                	not    %ecx
   3035d:	8d b3 ff fe fe fe    	lea    -0x1010101(%ebx),%esi
   30363:	21 f1                	and    %esi,%ecx
   30365:	81 e1 80 80 80 80    	and    $0x80808080,%ecx
   3036b:	89 c1                	mov    %eax,%ecx
   3036d:	75 21                	jne    30390 <strcpy+0x50>
   3036f:	90                   	nop
   30370:	83 c1 04             	add    $0x4,%ecx
   30373:	83 c2 04             	add    $0x4,%edx
   30376:	89 59 fc             	mov    %ebx,-0x4(%ecx)
   30379:	8b 1a                	mov    (%edx),%ebx
   3037b:	89 de                	mov    %ebx,%esi
   3037d:	f7 d6                	not    %esi
   3037f:	8d bb ff fe fe fe    	lea    -0x1010101(%ebx),%edi
   30385:	21 fe                	and    %edi,%esi
   30387:	81 e6 80 80 80 80    	and    $0x80808080,%esi
   3038d:	74 e1                	je     30370 <strcpy+0x30>
   3038f:	90                   	nop
   30390:	83 c2 01             	add    $0x1,%edx
   30393:	0f b6 5a ff          	movzbl -0x1(%edx),%ebx
   30397:	83 c1 01             	add    $0x1,%ecx
   3039a:	84 db                	test   %bl,%bl
   3039c:	88 59 ff             	mov    %bl,-0x1(%ecx)
   3039f:	75 ef                	jne    30390 <strcpy+0x50>
   303a1:	5b                   	pop    %ebx
   303a2:	5e                   	pop    %esi
   303a3:	5f                   	pop    %edi
   303a4:	5d                   	pop    %ebp
   303a5:	c3                   	ret    
