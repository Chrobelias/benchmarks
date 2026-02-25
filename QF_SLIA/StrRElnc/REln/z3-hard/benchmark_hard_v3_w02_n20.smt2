(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.range "2" "7") (re.union (re.* (str.to_re "22")) (str.to_re "25")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "841")) (re.range "1" "6"))))
(assert (str.in_re y (re.+ (str.to_re "637"))))

(assert (= (+ (* 2 (str.len y)) (str.to_int y) (* 10 (str.to_int z))) 33))

(check-sat)