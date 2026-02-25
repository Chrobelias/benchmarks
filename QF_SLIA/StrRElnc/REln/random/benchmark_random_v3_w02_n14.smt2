(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "99") (re.+ (re.* (re.range "5" "7"))))))
(assert (str.in_re y (re.union (str.to_re "370") (re.union (re.range "4" "8") (re.union (re.+ (re.range "7" "9")) (str.to_re "84"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "185") (str.to_re "70")))))

(assert (>= (+ (str.len x) (- (str.len z)) (* 7 (str.to_int x))) 49))

(check-sat)