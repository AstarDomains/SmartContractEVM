// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}


pragma solidity ^0.8.0;

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}


pragma solidity ^0.8.0;

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x00";
        }
        uint256 temp = value;
        uint256 length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }
}



pragma solidity ^0.8.0;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

pragma solidity ^0.8.0;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _setOwner(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _setOwner(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _setOwner(newOwner);
    }

    function _setOwner(address newOwner) private {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

pragma solidity ^0.8.0;


/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;
}

pragma solidity ^0.8.0;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}


library Roles {
    struct Role {
        mapping (address => bool) bearer;
    }

    /**
     * @dev Give an account access to this role.
     */
    function add(Role storage role, address account) internal {
        require(!has(role, account), "Roles: account already has role");
        role.bearer[account] = true;
    }

    /**
     * @dev Remove an account's access to this role.
     */
    function remove(Role storage role, address account) internal {
        require(has(role, account), "Roles: account does not have role");
        role.bearer[account] = false;
    }

    /**
     * @dev Check if an account has this role.
     * @return bool
     */
    function has(Role storage role, address account) internal view returns (bool) {
        require(account != address(0), "Roles: account is the zero address");
        return role.bearer[account];
    }
}

contract AdminControl is Ownable {

    using Roles for Roles.Role;

    Roles.Role private _controllerRoles;


    modifier onlyMinterController() {
      require (
        hasRole(msg.sender), 
        "AdminControl: sender must has minting role"
      );
      _;
    }

    modifier onlyMinter() {
      require (
        hasRole(msg.sender), 
        "AdminControl: sender must has minting role"
      );
      _;
    }

    constructor() {
      _grantRole(msg.sender);
    }

    function grantMinterRole (address account) public  onlyOwner {
      _grantRole(account);
    }

    function revokeMinterRole (address account) public  onlyOwner {
      _revokeRole(account);
    }

    function hasRole(address account) public view returns (bool) {
      return _controllerRoles.has(account);
    }
    
    function _grantRole (address account) internal {
      _controllerRoles.add(account);
    }

    function _revokeRole (address account) internal {
      _controllerRoles.remove(account);
    }

}



library StringUtil {

    /**
     * @dev Return the count of the dot "." in a string
    */
    function dotCount(string memory s) internal pure returns (uint) {
        s; // Don't warn about unused variables
        // Starting here means the LSB will be the byte we care about
        uint ptr;
        uint end;
        assembly {
            ptr := add(s, 1)
            end := add(mload(s), ptr)
        }
        uint num = 0;
        uint len = 0;
        for (len; ptr < end; len++) {
            uint8 b;
            assembly { b := and(mload(ptr), 0xFF) }
            if (b == 0x2e) {
                num += 1;
            }
            ptr += 1;
        }
        return num;
    }
	
	function toLower(string memory str) internal pure returns (string memory) {
        bytes memory bStr = bytes(str);
        bytes memory bLower = new bytes(bStr.length);
        for (uint i = 0; i < bStr.length; i++) {
            // Uppercase character...
            if ((uint8(bStr[i]) >= 65) && (uint8(bStr[i]) <= 90)) {
                // So we add 32 to make it lowercase
                bLower[i] = bytes1(uint8(bStr[i]) + 32);
            } else {
                bLower[i] = bStr[i];
            }
        }
        return string(bLower);
    }
	
	function toHash(string memory _s) internal pure returns (bytes32) {
        return keccak256(abi.encode(_s));
    }

    function isEmpty(string memory _s) internal pure returns (bool) {
        return bytes(_s).length == 0;
    }
	
    function hasWhiteSpace(string memory str) internal pure returns (bool){
		bytes memory bStr = bytes(str);
		for(uint i = 0; i < bStr.length; i++){
			bytes1 char = bStr[i];
			if(char == 0x20) {
				return true;
			}
		}
		return false;
	}
	
	 function compare(string memory _a, string memory _b) internal pure returns (int) {
        bytes memory a = bytes(_a);
        bytes memory b = bytes(_b);
        uint minLength = a.length;
        if (b.length < minLength) minLength = b.length;
        //@todo unroll the loop into increments of 32 and do full 32 byte comparisons
        for (uint i = 0; i < minLength; i ++)
            if (a[i] < b[i])
                return -1;
            else if (a[i] > b[i])
                return 1;
        if (a.length < b.length)
            return -1;
        else if (a.length > b.length)
            return 1;
        else
            return 0;
    }
    /// @dev Compares two strings and returns true iff they are equal.
    function equal(string memory _a, string memory _b) internal pure returns (bool) {
        return compare(_a, _b) == 0;
    }
    /// @dev Finds the index of the first occurrence of _needle in _haystack
    function indexOf(string memory _haystack, string memory _needle) internal pure returns (int)
    {
    	bytes memory h = bytes(_haystack);
    	bytes memory n = bytes(_needle);
    	if(h.length < 1 || n.length < 1 || (n.length > h.length)) 
    		return -1;
    	else if(h.length > (2**128 -1)) // since we have to be able to return -1 (if the char isn't found or input error), this function must return an "int" type with a max length of (2^128 - 1)
    		return -1;									
    	else
    	{
    		uint subindex = 0;
    		for (uint i = 0; i < h.length; i ++)
    		{
    			if (h[i] == n[0]) // found the first char of b
    			{
    				subindex = 1;
    				while(subindex < n.length && (i + subindex) < h.length && h[i + subindex] == n[subindex]) // search until the chars don't match or until we reach the end of a or b
    				{
    					subindex++;
    				}	
    				if(subindex == n.length)
    					return int(i);
    			}
    		}
    		return -1;
    	}	
    }
	
	
}

pragma solidity ^0.8.0;

interface IRegisterController 
{
	function getOwner(string memory domain) external view returns (address);
	
	function registerDomain(address to, string memory domain, string memory tld) external;
	
	function setManyMinter(string[] calldata keys, string[] calldata values, uint256 tokenId) external;
	
	function genTokenId(string memory label) external pure returns(uint256);
	
	function exists(uint256 tokenId) external view returns (bool);
	
	function getTokenId(string memory name) external view returns (uint256);
	
}

pragma solidity ^0.8.0;

contract CallRegisterController is AdminControl
{

	using SafeMath for uint256;
	
	
	constructor(){
		
	}
	
	bool public _saleIsActive = true;
	
	bool public _saleTwoCharIsActive = false;
	
	bool public _saleOneCharIsActive = false;
	
	bool public _isShared = false;
	
	uint256 private _price = 1;
	
	uint256 private _1chartimes = 1000;
	
	uint256 private _2chartimes = 100;
	
	uint256 private _3chartimes = 20;
	
	uint256 private _4chartimes = 5;
	
	uint256 private _5chartimes = 1;
	
	struct RefCodeInfo
	{		
		uint256 discount; // discount percent
		uint256 earn ; // shared percent
		uint scope; // 0: discount value, 1: No discount value
		bool status; // 					
		string title;
		string code;
		address creator;
		address receiver;
		uint expired;
		
	}
	
	mapping(bytes => RefCodeInfo) private colRefCodeInfo;
	
	string[] private RefCodeList;
	
	address private _contractRegister = address(0);

	function addRefCode(string memory code, string memory title, uint256 discount, uint256 earn, address creator, address receiver) public
	{
	
		string memory _code = StringUtil.toLower(code);
		
		RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
		
		if (bytes(objRefCodeInfo.code).length != 0)
		{
			require(objRefCodeInfo.creator == msg.sender, "Not Creator");
			
			objRefCodeInfo.discount = discount;
			objRefCodeInfo.earn = earn;
			objRefCodeInfo.receiver = receiver;
			objRefCodeInfo.title = title;
		}
		else
		{
			RefCodeInfo memory _objRefCodeInfo;
			_objRefCodeInfo.creator = creator;
			_objRefCodeInfo.discount = discount;
			_objRefCodeInfo.earn = earn;
			_objRefCodeInfo.receiver = receiver;
			_objRefCodeInfo.title = title;
			_objRefCodeInfo.code = _code;
			_objRefCodeInfo.status = false;
			_objRefCodeInfo.scope = 0;
			_objRefCodeInfo.expired = block.timestamp + 365 days;
			
			colRefCodeInfo[bytes(_code)] = _objRefCodeInfo;
			
			RefCodeList.push(_code);
		}
	}
	
	function editRefCode(string memory code, string memory title, uint256 discount, uint256 earn, address receiver, uint scope, bool status) public onlyOwner
	{
	
		string memory _code = StringUtil.toLower(code);
		RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
		objRefCodeInfo.discount = discount;
		objRefCodeInfo.earn = earn;
		objRefCodeInfo.receiver = receiver;
        objRefCodeInfo.title = title;
		objRefCodeInfo.scope = scope;
		objRefCodeInfo.status = status;
	}
	
	function removeRefCode(string memory code) public onlyOwner
	{
		string memory _code = StringUtil.toLower(code);
		RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
		if (bytes(objRefCodeInfo.code).length != 0){
			delete colRefCodeInfo[bytes(_code)];
		}
	}
	
	function setRefCodeStatus(string memory code, bool status) public onlyOwner
	{
		string memory _code = StringUtil.toLower(code);
		RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
		objRefCodeInfo.status = status;
	}
	
	function getRefCode(string memory code) public view returns (RefCodeInfo memory)
	{
		string memory _code = StringUtil.toLower(code);
		RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
		return objRefCodeInfo;
	}

	function setContractRegister(address _address) public onlyOwner {
        _contractRegister = _address;
    }
	
	function setShared() public onlyOwner {
        _isShared = !_isShared;
    }
	
	function getPrice() public view returns (uint256) {
        return _price;
    }
	
	function getPrice2Char() public view returns (uint256) {
        return getPrice().mul(_2chartimes);
    }
	
	function getPrice3Char() public view returns (uint256) {
        return getPrice().mul(_3chartimes);
    }
	
	function getPrice4Char() public view returns (uint256) {
        return getPrice().mul(_4chartimes);
    }
	
	function get2charTimes() public view returns (uint256) {
        return _2chartimes;
    }
	
	function get3charTimes() public view returns (uint256) {
        return _3chartimes;
    }
	
	function get4charTimes() public view returns (uint256) {
        return _4chartimes;
    }
	
	function setTimes(uint256 _1chartimenew, uint256 _2chartimenew, uint256 _3chartimenew, uint256 _4chartimenew) public onlyOwner {
		_1chartimes = _1chartimenew;
		_2chartimes = _2chartimenew;
        _3chartimes = _3chartimenew;
		_4chartimes = _4chartimenew;
    }
	
	function setPrice(uint256 price) public onlyOwner {
        _price = price;
    }
	
	function setSaleStateTwoChar() public onlyOwner {
        _saleTwoCharIsActive = !_saleTwoCharIsActive;
    }
	
	function setSaleStateOneChar() public onlyOwner {
        _saleOneCharIsActive = !_saleOneCharIsActive;
    }
	
	function balanceOf(address to) external view returns (uint256){
		uint256 _balance = IERC721(_contractRegister).balanceOf(to);
		return _balance;
	}
	
	function getRewardbyInviter(string memory inviter) public view returns (address, uint256){
		
		uint256 reward = 0;
		
		address result = address(0);
		
		if (bytes(inviter).length != 0)
		{
			string memory _inviter = StringUtil.toLower(inviter);
			
			bool __exist = IRegisterController(_contractRegister).exists(genTokenId(_inviter));
			
			if (__exist == true) 
			{
				result = IRegisterController(_contractRegister).getOwner(_inviter);

				uint256 _balance = IERC721(_contractRegister).balanceOf(result);
				
				if (_balance > 0)
				{
					reward = 10;
					
					if (_balance >= 50){
						reward = 15;
					}
						
					if (_balance >= 150){
						reward = 20;
					}
					
					if (_balance >= 250){
						reward = 25;
					}
						
					if (_balance >= 350){
						reward = 35;
					}
						
					if (_balance >= 500){
						reward = 40;
					}
				}
			}
		}
		return (result, reward);
	}
	
	function getOwner(string memory domain) external view returns (address){
		return IRegisterController(_contractRegister).getOwner(domain);
	}
	
	function exists(string memory domain) external view returns (bool){
		uint256 tokenId = genTokenId(domain);
		return IRegisterController(_contractRegister).exists(tokenId);
	}
	
	function registerDomain(address to, string memory domain, string memory tld) external onlyMinterController {
		require(to!= address(0), "To address is null");
		
		require(bytes(tld).length != 0, "TLD must be non-empty");
		
		uint256 _length = bytes(domain).length;
		
		require(_length != 0, "Must be non-empty");	
		
		require(StringUtil.hasWhiteSpace(domain) == false, "Cannot contain whitespace");
		
		require(StringUtil.dotCount(domain) == 0, "Cannot contain dot");

		string memory _domain = StringUtil.toLower(domain);
		
		string memory _tld = StringUtil.toLower(tld);
		
		string memory _fulldomain = string(abi.encodePacked(_domain, ".", _tld));
		
		uint256 tokenId = genTokenId(_fulldomain);
		
		// Check Exist
		if (_contractRegister != address(0))
		{
			require(!IRegisterController(_contractRegister).exists(tokenId), "Register: Already exists");
		}
		
		IRegisterController(_contractRegister).registerDomain(to, _domain, _tld);
		
	}
	
	
	function buyDomain(address to, string memory domain, string memory tld, string memory code, string memory inviter) external payable 
	{
		require(to!= address(0), "To address is null");
		
		require(bytes(tld).length != 0, "TLD must be non-empty");
		
		uint256 _length = bytes(domain).length;
		
		require(_length != 0, "Must be non-empty");	
		
		require(StringUtil.hasWhiteSpace(domain) == false, "Cannot contain whitespace");
		
		require(StringUtil.dotCount(domain) == 0, "Cannot contain dot");

		string memory _domain = StringUtil.toLower(domain);
		
		string memory _tld = StringUtil.toLower(tld);
		
		//string memory _fulldomain = string(abi.encodePacked(_domain, ".", _tld));
		
		// Refcode
		
		uint256 discount = 0;
		uint256 earn = 0;
		address receiver = address(0);
		uint scope = 0;
		
		if (bytes(code).length != 0)
		{
			string memory _code = StringUtil.toLower(code);
			RefCodeInfo storage objRefCodeInfo = colRefCodeInfo[bytes(_code)];
			if (objRefCodeInfo.discount > 0){
				discount = objRefCodeInfo.discount;
			}
			if (objRefCodeInfo.earn > 0){
				earn = objRefCodeInfo.earn;
			}
			if (objRefCodeInfo.receiver != address(0)){
				receiver = objRefCodeInfo.receiver;
			}
			scope = objRefCodeInfo.scope;
		}
		
		uint256 amount = msg.value;
		
		uint256 amountdiscount = 0;
		
		if (_length == 1)
		{
			require(_saleOneCharIsActive == true, "One character need to be allowed to buy");
			
			uint256 __price1 = getPrice().mul(_1chartimes);
			
			if (discount > 0){
				amountdiscount = __price1 * (discount/100);
				__price1 = __price1 * ((100-discount)/100);
			}
			
			require(amount >= __price1, "Insufficient or Token value sent is not correct");
		}
		
		if (_length == 2)
		{
			require(_saleTwoCharIsActive == true, "Two characters need to be allowed to buy");
			
			uint256 __price2 = getPrice().mul(_2chartimes);
			if (discount > 0){
				amountdiscount = __price2 * (discount/100);
				__price2 = __price2 * ((100-discount)/100);
			}
			require(amount >= __price2, "Insufficient or Token value sent is not correct");
		}
	
		if (_length == 3)
		{
			uint256 __price3 = getPrice().mul(_3chartimes);
			if (discount > 0){
				amountdiscount = __price3 * (discount/100);
				__price3 = __price3 * ((100-discount)/100);
			}
			require(amount >= __price3, "Insufficient or Token value sent is not correct");
		}
		
		if (_length == 4)
		{
			uint256 __price4 = getPrice().mul(_4chartimes);
			if (discount > 0){
				amountdiscount = __price4 * (discount/100);
				__price4 = __price4 * ((100-discount)/100);
			}
			require(amount >= __price4, "Insufficient or Token value sent is not correct");
		}
		
		if (_length >= 5)
		{
			uint256 __price5 = getPrice();
			if (discount > 0){
				amountdiscount = __price5 * (discount/100);
				__price5 = __price5 * ((100-discount)/100);
			}
			require(amount >= __price5, "Insufficient or Token value sent is not correct");
		}

	    IRegisterController(_contractRegister).registerDomain(to, _domain, _tld);

		if (earn > 0 && receiver != address(0))
		{
			uint256 amountearn = (amount - amountdiscount) * earn/100;
			if (scope == 1){
				amountearn = amount * earn/100;
			}
			payable(receiver).transfer(amountearn);
		}
		
	    if (_isShared == true)
		{
			uint256 reward;
			address result;
			
			(result, reward) = getRewardbyInviter(inviter);
					
			if (reward > 0 && result != address(0)){
				uint256 amountreward = (amount - amountdiscount) * reward/100;
				payable(result).transfer(amountreward);
			}
		}
    }
	
	function withdraw() external payable onlyOwner {
        require(payable(msg.sender).send(address(this).balance));
    }
}