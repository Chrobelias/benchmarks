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

(assert (str.in_re x (re.++ (re.union (str.to_re "46") (str.to_re "9")) (re.* (str.to_re "22")))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "40")) (str.to_re "96")))))
(assert (str.in_re z (re.union (re.* (re.* (str.to_re "71"))) (re.+ (str.to_re "57")))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "735")) (re.++ (str.to_re "68") (str.to_re "222")))))
(assert (str.in_re b (re.+ (re.++ (str.to_re "90") (re.union (re.* (str.to_re "30")) (str.to_re "673"))))))

(assert (= (+ (* 6 (str.len a)) (* 3 (str.len b)) (* 8 (str.to_int y))) 94))
(assert (< (+ (* 4 (str.len x)) (* (- 9) (str.to_int y)) (* 6 (str.to_int a))) 5))

(check-sat)