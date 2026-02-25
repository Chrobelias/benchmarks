(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.++ (re.+ (re.range "1" "7")) (re.union (re.range "6" "8") (str.to_re "7")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "328") (re.union (re.range "1" "8") (str.to_re "57"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "497") (str.to_re "987")))))
(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "16") (re.* (re.range "7" "9")))))))

(assert (>= (+ (str.len y) (* 2 (str.to_int z))) 54))

(check-sat)