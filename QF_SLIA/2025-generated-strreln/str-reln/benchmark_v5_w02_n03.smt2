(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "5") (re.* (str.to_re "721"))) (str.to_re "37"))))
(assert (str.in_re y (re.union (str.to_re "30") (re.+ (str.to_re "739")))))
(assert (str.in_re z (re.++ (re.union (re.+ (str.to_re "48")) (str.to_re "81")) (re.* (str.to_re "55")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "3")) (re.union (str.to_re "396") (re.* (re.range "0" "2"))))))
(assert (str.in_re b (re.* (re.++ (re.+ (str.to_re "860")) (re.+ (str.to_re "16"))))))

(assert (>= (+ (* 5 (str.len x)) (* (- 2) (str.to_int y)) (* (- 4) (str.to_int z))) 42))

(check-sat)