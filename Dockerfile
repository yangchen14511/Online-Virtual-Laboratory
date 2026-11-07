# ---- 构建阶段：用 gcc 编译 ----
FROM gcc:13 AS builder
WORKDIR /src
COPY hello.c .
RUN gcc -O2 -static -o hello hello.c

# ---- 运行阶段：只要一个可执行文件 ----
FROM scratch
COPY --from=builder /src/hello /hello
CMD ["/hello"]
