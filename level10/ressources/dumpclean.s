Disassembly of section .text:

08048620 <_start>:
		xor    %ebp,%ebp
		pop    %esi
		mov    %esp,%ecx
		and    $0xfffffff0,%esp
		push   %eax
		push   %esp
		push   %edx
		push   $0x80489e0
		push   $0x8048970
		push   %ecx
		push   %esi
		push   $0x80486d4
		call   80485b0 <__libc_start_main@plt>
		hlt    
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

08048650 <__do_global_dtors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		cmpb   $0x0,0x804a064
		jne    804869f <__do_global_dtors_aux+0x4f>
		mov    0x804a068,%eax
		mov    $0x8049f20,%ebx
		sub    $0x8049f1c,%ebx
		sar    $0x2,%ebx
		sub    $0x1,%ebx
		cmp    %ebx,%eax
		jae    8048698 <__do_global_dtors_aux+0x48>
		lea    0x0(%esi),%esi
		add    $0x1,%eax
		mov    %eax,0x804a068
		call   *0x8049f1c(,%eax,4)
		mov    0x804a068,%eax
		cmp    %ebx,%eax
		jb     8048680 <__do_global_dtors_aux+0x30>
		movb   $0x1,0x804a064
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		lea    0x0(%esi,%eiz,1),%esi
		lea    0x0(%edi,%eiz,1),%edi

080486b0 <frame_dummy>:
		push   %ebp
		mov    %esp,%ebp
		sub    $0x18,%esp
		mov    0x8049f24,%eax
		test   %eax,%eax
		je     80486d1 <frame_dummy+0x21>
		mov    $0x0,%eax
		test   %eax,%eax
		je     80486d1 <frame_dummy+0x21>
		movl   $0x8049f24,(%esp)
		call   *%eax
		leave  
		ret    
		nop

080486d4 <main>:
		push   %ebp
		mov    %esp,%ebp
		and    $0xfffffff0,%esp
		sub    $0x1050,%esp
		mov    0xc(%ebp),%eax
		mov    %eax,0x1c(%esp)
		mov    %gs:0x14,%eax
		mov    %eax,0x104c(%esp)
		xor    %eax,%eax
		cmpl   $0x2,0x8(%ebp)
		jg     804871f <main+0x4b>
		mov    0x1c(%esp),%eax
		mov    (%eax),%edx
		mov    $0x8048a40,%eax
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		movl   $0x1,(%esp)
		call   8048590 <exit@plt>
		mov    0x1c(%esp),%eax
		mov    0x4(%eax),%eax
		mov    %eax,0x28(%esp)
		mov    0x1c(%esp),%eax
		mov    0x8(%eax),%eax
		mov    %eax,0x2c(%esp)
		mov    0x1c(%esp),%eax
		add    $0x4,%eax
		mov    (%eax),%eax
		movl   $0x4,0x4(%esp)
		
		mov    %eax,(%esp)
		call   80485e0 <access@plt>
		test   %eax,%eax
		jne    8048940 <main+0x26c>
		mov    $0x8048a7b,%eax
		mov    0x2c(%esp),%edx
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		mov    0x804a060,%eax
		mov    %eax,(%esp)
		call   8048530 <fflush@plt>
		movl   $0x0,0x8(%esp)
		
		movl   $0x1,0x4(%esp)
		
		movl   $0x2,(%esp)
		call   80485f0 <socket@plt>
		mov    %eax,0x30(%esp)
		lea    0x103c(%esp),%eax
		movl   $0x0,(%eax)
		movl   $0x0,0x4(%eax)
		movl   $0x0,0x8(%eax)
		movl   $0x0,0xc(%eax)
		movw   $0x2,0x103c(%esp)
		
		mov    0x2c(%esp),%eax
		mov    %eax,(%esp)
		call   8048600 <inet_addr@plt>
		mov    %eax,0x1040(%esp)
		movl   $0x1b39,(%esp)
		call   8048550 <htons@plt>
		mov    %ax,0x103e(%esp)
		
		movl   $0x10,0x8(%esp)
		
		lea    0x103c(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x30(%esp),%eax
		mov    %eax,(%esp)
		call   8048610 <connect@plt>
		cmp    $0xffffffff,%eax
		jne    8048830 <main+0x15c>
		mov    $0x8048a95,%eax
		mov    0x2c(%esp),%edx
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		movl   $0x1,(%esp)
		call   8048590 <exit@plt>
		movl   $0x8,0x8(%esp)
		
		movl   $0x8048ab3,0x4(%esp)
		
		mov    0x30(%esp),%eax
		mov    %eax,(%esp)
		call   80485c0 <write@plt>
		cmp    $0xffffffff,%eax
		jne    8048872 <main+0x19e>
		mov    $0x8048abc,%eax
		mov    0x2c(%esp),%edx
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		movl   $0x1,(%esp)
		call   8048590 <exit@plt>
		mov    $0x8048adf,%eax
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		mov    0x804a060,%eax
		mov    %eax,(%esp)
		call   8048530 <fflush@plt>
		movl   $0x0,0x4(%esp)
		
		mov    0x28(%esp),%eax
		mov    %eax,(%esp)
		call   80485a0 <open@plt>
		mov    %eax,0x34(%esp)
		cmpl   $0xffffffff,0x34(%esp)
		jne    80488c3 <main+0x1ef>
		movl   $0x8048afb,(%esp)
		call   8048560 <puts@plt>
		movl   $0x1,(%esp)
		call   8048590 <exit@plt>
		movl   $0x1000,0x8(%esp)
		
		lea    0x3c(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x34(%esp),%eax
		mov    %eax,(%esp)
		call   8048510 <read@plt>
		mov    %eax,0x38(%esp)
		cmpl   $0xffffffff,0x38(%esp)
		jne    8048916 <main+0x242>
		call   80485d0 <__errno_location@plt>
		mov    (%eax),%eax
		mov    %eax,(%esp)
		call   8048570 <strerror@plt>
		mov    $0x8048b15,%edx
		mov    %eax,0x4(%esp)
		mov    %edx,(%esp)
		call   8048520 <printf@plt>
		movl   $0x1,(%esp)
		call   8048590 <exit@plt>
		mov    0x38(%esp),%eax
		mov    %eax,0x8(%esp)
		lea    0x3c(%esp),%eax
		mov    %eax,0x4(%esp)
		mov    0x30(%esp),%eax
		mov    %eax,(%esp)
		call   80485c0 <write@plt>
		movl   $0x8048b33,(%esp)
		call   8048560 <puts@plt>
		jmp    8048955 <main+0x281>
		mov    $0x8048b3f,%eax
		mov    0x28(%esp),%edx
		mov    %edx,0x4(%esp)
		mov    %eax,(%esp)
		call   8048520 <printf@plt>
		mov    0x104c(%esp),%edx
		xor    %gs:0x14,%edx
		je     804896a <main+0x296>
		call   8048540 <__stack_chk_fail@plt>
		leave  
		ret    
		nop
		nop
		nop
		nop

08048970 <__libc_csu_init>:
		push   %ebp
		push   %edi
		push   %esi
		push   %ebx
		call   80489e2 <__i686.get_pc_thunk.bx>
		add    $0x167b,%ebx
		sub    $0x1c,%esp
		mov    0x30(%esp),%ebp
		lea    -0xe0(%ebx),%edi
		call   80484d0 <_init>
		lea    -0xe0(%ebx),%eax
		sub    %eax,%edi
		sar    $0x2,%edi
		test   %edi,%edi
		je     80489c9 <__libc_csu_init+0x59>
		xor    %esi,%esi
		lea    0x0(%esi),%esi
		mov    0x38(%esp),%eax
		mov    %ebp,(%esp)
		mov    %eax,0x8(%esp)
		mov    0x34(%esp),%eax
		mov    %eax,0x4(%esp)
		call   *-0xe0(%ebx,%esi,4)
		add    $0x1,%esi
		cmp    %edi,%esi
		jne    80489a8 <__libc_csu_init+0x38>
		add    $0x1c,%esp
		pop    %ebx
		pop    %esi
		pop    %edi
		pop    %ebp
		ret    
		jmp    80489e0 <__libc_csu_fini>
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

080489e0 <__libc_csu_fini>:
		repz ret 

080489e2 <__i686.get_pc_thunk.bx>:
		mov    (%esp),%ebx
		ret    
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

080489f0 <__do_global_ctors_aux>:
		push   %ebp
		mov    %esp,%ebp
		push   %ebx
		sub    $0x4,%esp
		mov    0x8049f14,%eax
		cmp    $0xffffffff,%eax
		je     8048a14 <__do_global_ctors_aux+0x24>
		mov    $0x8049f14,%ebx
		xchg   %ax,%ax
		sub    $0x4,%ebx
		call   *%eax
		mov    (%ebx),%eax
		cmp    $0xffffffff,%eax
		jne    8048a08 <__do_global_ctors_aux+0x18>
		add    $0x4,%esp
		pop    %ebx
		pop    %ebp
		ret    
		nop
		nop

Disassembly of section .fini:

08048a1c <_fini>:
		push   %ebx
		sub    $0x8,%esp
		call   8048a25 <_fini+0x9>
		pop    %ebx
		add    $0x15cf,%ebx
		call   8048650 <__do_global_dtors_aux>
		add    $0x8,%esp
		pop    %ebx
		ret    
