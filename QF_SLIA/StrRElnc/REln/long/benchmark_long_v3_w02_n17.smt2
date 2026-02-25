(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.+ (re.union (str.to_re "6") (re.union (str.to_re "497") (re.* (str.to_re "335")))))))
(assert (str.in_re y (re.++ (re.range "5" "8") (re.* (str.to_re "74")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "37") (re.+ (str.to_re "92"))) (str.to_re "268"))))

(assert (= (+ (* 4 (str.len z)) (* 10 (str.to_int x))) 16))

(check-sat)