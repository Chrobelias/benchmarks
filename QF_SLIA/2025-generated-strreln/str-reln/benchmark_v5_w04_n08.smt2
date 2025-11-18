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

(assert (str.in_re x (re.+ (re.union (str.to_re "992") (str.to_re "248")))))
(assert (str.in_re y (re.++ (str.to_re "183") (re.+ (re.++ (str.to_re "67") (str.to_re "5"))))))
(assert (str.in_re z (re.union (re.+ (str.to_re "6")) (re.++ (str.to_re "75") (re.range "5" "7")))))
(assert (str.in_re a (re.union (re.+ (re.++ (str.to_re "73") (re.range "2" "5"))) (str.to_re "470"))))
(assert (str.in_re b (re.* (re.++ (str.to_re "3") (re.* (str.to_re "9"))))))

(assert (> (+ (* (- 7) (str.len x)) (* 2 (str.len y)) (* 2 (str.len z)) (* (- 4) (str.len a)) (* (- 8) (str.len b))) 98))
(assert (< (+ (* (- 8) (str.len x)) (* (- 2) (str.len y)) (* (- 3) (str.len z)) (* 5 (str.len a))) 37))
(assert (>= (+ (* 5 (str.len x)) (* (- 3) (str.len y)) (* 3 (str.len b))) 100))
(assert (= (+ (* (- 5) (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z)) (* (- 9) (str.to_int a)) (* (- 5) (str.to_int b))) 73))

(check-sat)