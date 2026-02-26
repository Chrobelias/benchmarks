(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "47" y "37" z)))

(assert (str.in_re z (re.+ (re.union (re.* (re.range "7" "9")) (str.to_re "80")))))
(assert (str.in_re x (re.union (re.++ (re.range "3" "9") (re.* (str.to_re "69"))) (re.+ (re.range "3" "9")))))
(assert (str.in_re y (re.++ (re.range "6" "8") (re.* (str.to_re "236")))))

(assert (> (+ (- (str.to_int x)) (* (- 8) (str.to_int y)) (* 4 (str.to_int z))) 44))
(assert (> (+ (* 2 (str.len y)) (* 7 (str.len z)) (* 4 (str.to_int x))) 25))

(check-sat)