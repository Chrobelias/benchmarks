(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "90") (re.range "3" "9"))))))
(assert (str.in_re y (re.++ (str.to_re "870") (re.++ (str.to_re "617") (re.+ (str.to_re "0"))))))
(assert (str.in_re z (re.+ (re.* (re.++ (re.range "4" "6") (re.* (str.to_re "56")))))))
(assert (str.in_re a (re.+ (re.+ (re.++ (str.to_re "626") (str.to_re "4"))))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 6) (str.len y)) (str.to_int y)) 9))
(assert (< (+ (* 4 (str.len a)) (* 5 (str.to_int x)) (* 2 (str.to_int y)) (* (- 8) (str.to_int a))) 2))

(check-sat)