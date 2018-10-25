# mtg    public static void main(String[] args) throws IOException {

        Path magic = Paths.get("../magic.txt");
        Path magicZip = Paths.get("../magic.7z");
        Files.writeString(magic,
                Arrays.toString(Files.readAllBytes(Paths.get("../ExampleServlet.7z"))),
                StandardOpenOption.CREATE);


        Byte[] bytes = Arrays.stream(Files.readString(magic).replace("[", "").replace("]", "").replace(",", "").split(" "))
                .map(Byte::parseByte).toArray(Byte[]::new);

        byte[] toWrite = new byte[bytes.length];
        for (int i = 0; i < bytes.length; i++) {
            toWrite[i] = bytes[i];
        }

        Files.write(magicZip, toWrite,
                StandardOpenOption.CREATE);
    }
