(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ "31" y)))

(assert (str.in_re x (re.+ (re.union (re.* (re.range "1" "7")) (re.* (re.range "1" "9"))))))
(assert (str.in_re y (re.+ (re.union (re.+ (re.* (str.to_re "654"))) (str.to_re "19")))))
(assert (str.in_re z (re.* (re.union (re.+ (str.to_re "78")) (re.range "1" "9")))))

(assert (< (+ (* 4 (str.len y)) (* 4 (str.to_int x))) 49))

(check-sat)