import sys
import os

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 certificate_script.py <certificate.pem>")
        return

    file_path = sys.argv[1]
    if not os.path.exists(file_path):
        print(f"Error: File {file_path} not found.")
        return

    with open(file_path, 'rb') as f:
        cert_data = f.read()

    hex_array = ", ".join([f"0x{b:02x}" for b in cert_data])
    
    print("\n--- Copy the following array into your header file ---\n")
    print(f"uint8_t certificate[] = {{\n{hex_array}\n}};")
    print(f"\nTotal Length: {len(cert_data)} bytes")

if __name__ == "__main__":
    main()