(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "637")) (re.range "5" "8")))))

(assert (> (+ (* 4 (str.len x)) (* (- 3) (str.to_int x))) 31))
(assert (>= (+ (* 6 (str.len x)) (* 2 (str.to_int x))) 42))
(assert (= (* 9 (str.to_int x)) 63))

(check-sat)